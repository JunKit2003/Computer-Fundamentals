#include<io.h>
#include<stdio.h>
#include<winsock2.h>
#include<ctype.h>
#include<string.h>
#define MY_PORT	8989
#define MAX 256
#include<time.h>

char mystrcmp(char *p1, char *p2){
    const unsigned char *s1 = (const unsigned char *) p1;
    const unsigned char *s2 = (const unsigned char *) p2;
    unsigned char c1, c2;
  do
    {
      c1 = (unsigned char) *s1++;
      c2 = (unsigned char) *s2++;
      if (c1 == '\0')
	return c1 - c2;
    }
  while (c1 == c2);
}

int main(int argc , char *argv[])
{
    WSADATA wsa;
    SOCKET sockfd , clientfd;
    struct sockaddr_in server;
	char buffer[MAX];

    printf("Initialising Winsock...");
    if (WSAStartup(MAKEWORD(2,2),&wsa) != 0) //Windows startup step
    {
        printf("Failed. Error Code : %d",WSAGetLastError());
        return 1;
    }

    printf("Initialised.\n");

	//socket step
    if ( (sockfd = socket(AF_INET, SOCK_STREAM, 0)) == INVALID_SOCKET) //if error
	{
		perror("Socket");
		exit(errno); //print error code if fail
	}
        printf("Socket created.\n"); //print if socket is created

	// Preparing sockaddr_in structure
	server.sin_family = AF_INET;
	server.sin_port = htons(MY_PORT);	  // setting port to 8989
	server.sin_addr.s_addr = INADDR_ANY;

	//bind step
    if ( bind(sockfd, (struct sockaddr*)&server, sizeof(server)) != 0 )
	{
		perror("socket--bind");
		exit(errno);
	}

        puts("Bind done");

	//listen step
	if ( listen(sockfd, 20) != 0 )
	{
		perror("socket--listen");
		exit(errno);
	}

        puts("Waiting for incoming connections...");

    struct sockaddr_in client_addr;
    int addrlen=sizeof(client_addr);

	//while loop that goes on forever
while (1){
    clientfd = accept(sockfd, (struct sockaddr*)&client_addr, &addrlen); //accept step

    printf("\n\nIP address: %s\n",inet_ntoa(client_addr.sin_addr));
    printf("Server's port number: %d\n", ntohs(server.sin_port));
    printf("Client's Port number: %d\n",ntohs(client_addr.sin_port));


//Loop to handle multiple request
    while(1){

        //Clear buffer
        for(int i=0;i<MAX;){
            buffer[i]='\0';
            i++;
        }

//RE:receive
        recv(clientfd, buffer, MAX, 0);

        //reverse string
        char temp;
        int i,length;
        length=strlen(buffer)-1;
        char exit_clause[] ="revres tixe";
        char date_clause[] ="etad";

        for(int k=0;k<strlen(buffer);k++)
		{
			if(buffer[k]>='A'&&buffer[k]<='Z')
			{
				buffer[k]+=32;
			}
		}

        for(i=0;i<length;i++){
            temp=buffer[i];
            buffer[i]=buffer[length];
            buffer[length--]=temp;


        }
        if(mystrcmp(buffer,exit_clause) == 0){
            printf("\nSocket terminating...");
            close(clientfd); //close step
            printf("\nSocket terminated.");
            break;
        }

        else if(mystrcmp(buffer,date_clause)==0){
            time_t t = time(NULL); //using time_t to save time variable
            struct tm  *timeptr; //declaring localtime function in this format
            timeptr = localtime(&t); //localtime function
            strftime(buffer, sizeof(buffer), "%a %c %z\n\n\r", timeptr); //format the time in the desired format in the question
            send(clientfd, buffer, strlen(buffer), 0);
        }

        else if(strlen(buffer)!=0 && buffer[0] != '\n'){
            printf("\nLength of the message: %d\n",strlen(buffer));
            send(clientfd, buffer, strlen(buffer), 0);
            }

        }
    }



	//cleanup
    close(sockfd);
    WSACleanup();
	return 0;
}

