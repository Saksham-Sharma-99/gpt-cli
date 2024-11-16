#!/usr/bin/env node

import { program } from 'commander';
import chalk from 'chalk';
import boxen from 'boxen';

// Basic command setup
program
  .name('gpt-cli')
  .description('A sample CLI tool with pretty responses')
  .version('1.0.0');

// Add a sample command
program
  .command('gpt [command...]')
  .description('gpt command')
  .action((commands) => {
    const commandText = commands.join(' ');
    console.log(boxen(chalk.cyan(`${commandText}`), { padding: 1, borderColor: 'cyan', dimBorder: false }));
  });

// Add more commands as needed

// Parse the command line arguments
program.parse(process.argv);
