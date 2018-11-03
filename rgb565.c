#include<stdio.h>

int main(int argc, char **argv)
{
	uint8_t values[6];
	for(int i=0;i<6;i++)
	{
		if(argv[1][i] >= 48 && argv[1][i] <= 57)
			values[i] = argv[1][i] - '0';
		else 
		{
			if(argv[1][i] >= 65 || argv[1][i] <= 70)
				values[i] = argv[1][i] - 55;
			else
				printf("error");
		}
	}
	uint8_t rgb888[3];
	for(int i=0 ; i<3; i++)
		rgb888[i] = values[i*2]*16 + values[i*2+1];
	rgb888[0] = rgb888[0] >> 3;
	rgb888[1] = rgb888[1] >> 2;
	rgb888[2] = rgb888[2] >> 3;
	uint16_t rgb565;
	rgb565 = (uint16_t)rgb888[0] << 11 | (uint16_t)rgb888[1] << 5 | (uint16_t)rgb888[2];
	printf("%04x", rgb565);
	return 0;
}
