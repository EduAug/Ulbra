#pip install psutil
import psutil

mem = psutil.virtual_memory()

print(f"Uso memória total: {mem.total} B")
print(f"Uso memória disponível: {mem.available} B")
print(f"Memória em uso: {mem.percent}%")