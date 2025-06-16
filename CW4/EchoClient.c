#include<io.h>
#include<stdio.h>
#include<winsock2.h>
#include<string.h>
#define MY_PORT	8989

char mystrcmp(char *p1, char *p2){ // making strcmp
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

int main(){
    //Initialise WinSock
    WSADATA wsa;
    int err;
    err = WSAStartup(MAKEWORD(2,2), &wsa);
    if (err != 0) exit(errno);

    //create socket
    int s;
    s = socket(AF_INET, SOCK_STREAM, 0);
    if (s==INVALID_SOCKET){
        printf("Error code: %d\n", WSAGetLastError());
        exit(errno);
    }

    //assigning addresses
    struct sockaddr_in server;

    server.sin_family = AF_INET;
    server.sin_port = htons(MY_PORT);
    server.sin_addr.s_addr = 16777343;

    //Connect
    connect(s, (struct sockaddr *)&server, sizeof(server));

    int exiter = 0;

    while(1){
        //Send buffer
        char buffer[256];



        scanf("%s", &buffer[0]);

        if(mystrcmp(buffer,"exit") == 0){
            exiter++;
        }
         if(mystrcmp(buffer,"client") == 0){
                exiter++;
            }

        if (exiter >= 2){
            printf("Client Exit...\n");
            exit(1);
        }


        if(send(s, buffer, strlen(buffer),0)<0){
            perror("Send failed");
            exit(errno);
        }


        //Receive Buffer

        if(recv(s, buffer, 256, 0)<0){
            perror("Receive Failed");
            exit(errno);
        }
        printf("%s\n", buffer);
    }
    //Clean up and Close
    close(s);
    WSACleanup();
return 0;
}
