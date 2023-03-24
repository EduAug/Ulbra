using TDE_Lista;

PersonRepository repository = new PersonRepository();
/**/
int loopCont = 1;
int OpCaixa;
int qryId;
int qryCho;
string qryName;
string qryPhone;

say($"Selecione uma operação para efetuar");
while (loopCont != 0)
{
    say($"\n\n1-Conferir Pessoas\t2-Inserir Pessoa\n3-Atualizar Pessoa\t4-Remover Pessoa\n5-Sair");
    OpCaixa = Convert.ToInt32(Console.ReadLine());
    switch (OpCaixa)
    {
        case 1:
            Console.Clear();
            foreach (var item in repository.GetAll()){
                say($"ID: {item.Id}     |Nome: {item.Name}      |Telefone: {item.Phone}");    
            }
            break;
        case 2:
            Console.Clear();
            say($"\n\nInsira os dados da pessoa a ser inserida:\n\n");
            say($"ID: ");
            qryId = Convert.ToInt32(Console.ReadLine());
            if(repository.CheckExists(qryId)==0){

                say($"Nome: ");
                qryName = Convert.ToString(Console.ReadLine());
                say($"Telefone: ");
                qryPhone = Convert.ToString(Console.ReadLine());

                Person person = new Person(qryId,qryName,qryPhone);
                repository.Include(person);

            }else if(repository.CheckExists(qryId)==qryId){
                say($"Já existe um usuário cadastrado com esse Id, tente outro\n");
            }
            break;
        case 3:
            Console.Clear();
            say($"\n\nInsira o ID do usuário que deseja atualizar: ");
            qryId = Convert.ToInt32(Console.ReadLine());
            if(repository.CheckExists(qryId)==qryId){

                say($"O que você gostaria de atualizar?");
                say($"1- Apenas o nome\n2- Apenas o telefone\n3- Ambos");
                qryCho = Convert.ToInt32(Console.ReadLine());
                if (qryCho == 1){

                    say($"\nInsira o novo nome do usuário {qryId}");
                    qryName = Convert.ToString(Console.ReadLine());

                    repository.Update(qryId,qryName,"",qryCho);

                }else if(qryCho == 2){

                    say($"\nInsira o novo telefone do usuário {qryId}");
                    qryPhone = Convert.ToString(Console.ReadLine());
                    
                    repository.Update(qryId,"",qryPhone,qryCho);

                }else if(qryCho == 3){

                    say($"\nInsira o novo nome do usuário {qryId}");
                    qryName = Convert.ToString(Console.ReadLine());
                    say($"\nInsira o novo telefone do usuário {qryId}");
                    qryPhone = Convert.ToString(Console.ReadLine());
                    
                    repository.Update(qryId,qryName,qryPhone,qryCho);

                }
            }else{
                say($"Usuário inexistente! Tente Novamente\n");
                break;
            }
            
            break;
        case 4:
            Console.Clear();
            say($"\n\nInsira o ID da pessoa a ser removida: \n\n");
            qryId = Convert.ToInt32(Console.ReadLine());
            if(repository.CheckExists(qryId)==qryId){
            
                repository.Delete(qryId);

            }else{
                say($"Usuário inexistenet! Tente novamente\n");
            }
            break;
        case 5:
            loopCont = 0;
            break;
        default:
            break;
    }
}























/*
// Testando métodos sem o loop while com interação do usuário
Person Person1 = new Person(20,"Gero","51923456789");
Person Person2 = new Person(18,"Lazuli","48951236745");
Person Person3 = new Person(17,"Lapis","21923651495");
repository.Include(Person1);
repository.Include(Person2);
repository.Include(Person3);
foreach (var item in repository.GetAll())
{
    say($"ID: {item.Id}     |Nome: {item.Name}      |Telefone: {item.Phone}");    
}
repository.Delete(20);
foreach (var item in repository.GetAll())
{
    say($"ID: {item.Id}     |Nome: {item.Name}      |Telefone: {item.Phone}");    
}
repository.Update(17,"MVP 17","48912360589");
foreach (var item in repository.GetAll())
{
    say($"ID: {item.Id}     |Nome: {item.Name}      |Telefone: {item.Phone}");    
}

*/










void say(string txt){
    Console.WriteLine(txt);
}
