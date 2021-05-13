# Opcional - Encriptar disco

```bash
Modo Paranoico: Formatar o disco principal
```

```bash
dd if=/dev/urandom of=/dev/sd(x) bs=2M && sync
dd if=/dev/zero of=/dev/sd(x) bs=2M && sync
```

cryptsetup -v -y -c aes-xts-plain64 -s 512 -h sha512 -i 5000 --use-random luksFormat /dev/sdX(3)

````

Formatar partição de arranque (/dev/sd(1))

```bash
mkfs.ext2/3/4 /dev/sdX(1)
```

Fazer dump do disco encriptado e salvar o resultado num ficheiro com a extensão txt.<br>
Abrir o acesso ao disco para fazer partição do disco em modo LVM

```bash
cryptsetup luksDump /dev/sda2 > discoDump.txt
cryptsetup luksOpen /dev/sda2 lvm
```

Criar partições na estrutura LVM e activa-las<br>

```bash
lvmdiskscan
pvcreate /dev/mapper/gentoo
pvdisplay
vgcreate gentoo /dev/mapper/gentoo
vgdisplay
lvcreate -C y -L 4G gentoo -n swap
lvcreate -L 10G gentoo -n root
lvcreate -L 20G gentoo -n usr
lvcreate -L 20G gentoo -n var
lvcreate -L 10G gentoo -n tmp
lvcreate -l +100%FREE gentoo -n home
lvdisplay
vgscan
vgchange -ay
```
[Modo Paranoico](./FORMAT.md): <br>
Preparar disco principal:<br>
```bash
cfdisk /dev/sd(x)
```
Definir:<br>
+128M espaço para os ficheiros de arranque: /dev/sX(1)<br>
<b>Nota</b>: Se a máquina suportar UEFI esta partição deverá estar formatada em FAT32 mas neste caso, a BIOS não suporta UEFI.
<br>O método antigo continua a funcionar (legacy) > EXT2/3/4/etc<br>
++ O resto fica para o LVM encriptado? Vamos considerar que sim. /dev/sdX(2). <br>
Definir sequencia alfanumérica como palavra pass de encriptação do disco em questão.<br>
Formatar partições definidas na tabela LVM<br>
```bash
mkswap /dev/mapper/gentoo-swap
mkfs.ext4 /dev/mapper/gentoo-root
mkfs.ext4 /dev/mapper/gentoo-home
mkfs.ext4 /dev/mapper/gentoo-usr
mkfs.ext4 /dev/mapper/gentoo-var
mkfs.ext4 /dev/mapper/gentoo-tmp

```
Activar e associar as partições de disco criadas na tabela LVM
```bash
swapon /dev/mapper/gentoo-swap
mkdir /mnt/gentoo
mount /dev/mapper/gentoo-root /mnt/gentoo
mkdir /mnt/gentoo/{usr,var,tmp,boot,home}
mount /dev/mapper/gentoo-usr /mnt/gentoo/usr
mount /dev/mapper/gentoo-var /mnt/gentoo/var
mount /dev/mapper/gentoo-tmp /mnt/gentoo/tmp
mount /dev/mapper/gentoo-home /mnt/gentoo/home
```
````
