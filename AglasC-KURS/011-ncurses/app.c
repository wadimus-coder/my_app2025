#include <curses.h>

int main(void)
{
	char a;
	initscr();
	noecho();
	curs_set(0);

	a = getch();

	mvaddch(1, 11, a);
	getch();
	endwin();

	 return 0;
}
