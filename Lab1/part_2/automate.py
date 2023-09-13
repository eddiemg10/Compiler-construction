import subprocess
import os


def compile_flex_file(input_file):
    delete_generated_files()
    try:
        # Run the flex command to generate the C source code
        subprocess.run(['flex', input_file], check=True)

        # Compile the generated C code to create an executable
        subprocess.run(['gcc', '-o', 'scan', 'lex.yy.c'], check=True)

        print("Compilation successful")

    except subprocess.CalledProcessError as e:
        print(f"Compilation failed with error: {e}")
    except FileNotFoundError:
        print("Error: flex or gcc command not found. Please ensure they are installed.")


def delete_generated_files():
    try:
        # Delete the generated lex.yy.c and scan.exe
        os.remove('lex.yy.c')
        os.remove('scan.exe')  # For Windows

        print("Generated files deleted.")

    except FileNotFoundError:
        print("No generated files found.")


if __name__ == "__main__":
    # Replace 'your_input_file.l' with the name of your Flex input file
    input_file = 'password.l'
    compile_flex_file(input_file)
