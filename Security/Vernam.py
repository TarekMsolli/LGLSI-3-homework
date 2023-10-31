# Function to perform the XOR operation on two binary strings
def xor(a, b):
    result = ""
    for i in range(len(a)):
        result += '1' if a[i] != b[i] else '0'
    return result

# Function to encrypt a message using the Vernam cipher (one-time pad)
def encrypt(plaintext, one_time_pad):
    if len(plaintext) != len(one_time_pad):
        return "Plaintext and one-time pad must have the same length."
    
    ciphertext = ""
    for i in range(len(plaintext)):
        plaintext_bit = bin(ord(plaintext[i]))[2:].zfill(8)  # Convert the character to an 8-bit binary string
        pad_bit = bin(ord(one_time_pad[i]))[2:].zfill(8)  # Convert the one-time pad character to an 8-bit binary string
        encrypted_bit = xor(plaintext_bit, pad_bit)  # Perform XOR operation
        ciphertext += chr(int(encrypted_bit, 2))  # Convert the result back to a character
    return ciphertext

# Function to decrypt a ciphertext using the Vernam cipher (one-time pad)
def decrypt(ciphertext, one_time_pad):
    if len(ciphertext) != len(one_time_pad):
        return "Ciphertext and one-time pad must have the same length."
    
    plaintext = ""
    for i in range(len(ciphertext)):
        ciphertext_bit = bin(ord(ciphertext[i]))[2:].zfill(8)  # Convert the character to an 8-bit binary string
        pad_bit = bin(ord(one_time_pad[i]))[2:].zfill(8)  # Convert the one-time pad character to an 8-bit binary string
        decrypted_bit = xor(ciphertext_bit, pad_bit)  # Perform XOR operation
        plaintext += chr(int(decrypted_bit, 2))  # Convert the result back to a character
    return plaintext

# Example usage:
one_time_pad = "RandomKey"  # Should be truly random and used only once
message = "Hello, World!"
encrypted_message = encrypt(message, one_time_pad)
print("Encrypted:", encrypted_message)
decrypted_message = decrypt(encrypted_message, one_time_pad)
print("Decrypted:", decrypted_message)
