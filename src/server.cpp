#include <stdio.h>
#include <sys/socket.h>

extern "C" void c_main() {
  // fd = socket()
  // bind(fd, address)
  // listen(fd)
  // while True:
  //   conn_fd = accept(fd)
  //   do_something_with(conn_fd)
  //   close(conn_fd)
  // int fd = socket(AF_INET, SOCK_STREAM, 0);
  printf("Hello World!\n");
}
