#include <curses.h>

int main()
{
	int c; // input
	int y = 10;
	int x = 12;

	initscr();
	keypad(stdscr, TRUE); // allow arrows
	noecho();			  // don't display input
	curs_set(0);		  // hide cursor

	do
	{
		clear();

		if (c == KEY_UP)
			y--;
		else if (c == KEY_DOWN)
			y++;
		else if (c == KEY_LEFT)
			x--;
		else if (c == KEY_RIGHT)
			x++;

		mvaddch(y, x, '@'); // print cursor
	}

	while ((c = getch()) != 27);

	printf("Test!!");
	endwin();

	getch();
	getch();

	return 0;
}