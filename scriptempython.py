origem = input('Qual eh o nome do arquivo a ser convertido? (inclua a extensao)\n')
nome = input('Digite o nome do programa resultante:')
binary = open(origem, "r")
desth = open(nome+'_H.drs', "w")
destl = open(nome+'_L.drs', "w")
init = '''#------------------------------------------------------------
#- Deeds (Digital Electronics Education and Design Suite)
#- Rom Contents Saved on (10/10/21, 10:35:57 PM)
#-      by Deeds (Digital Circuit Simulator)(Deeds-DcS)
#-      Ver. 2.40.330 (Jan 07, 2021)
#- Copyright (c) 2002-2020 University of Genoa, Italy
#-      Web Site:  https://www.digitalelectronicsdeeds.com
#------------------------------------------------------------
#R ROM4Kx16, id 00B4
#- Deeds Rom Source Format (*.drs)

#A 0000h
#H

'''
desth.write(init)
destl.write(init)
for i in binary:
    desth.write(i[11:15] + '\n')
    destl.write(i[15:19] + '\n')
desth.close()
destl.close()
binary.close()
print(f'Tudo pronto, os arquivos gerados foram: {nome}_L.drs e {nome}_H.drs')