program PadraoProjetos;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form4},
  br.com.factorysolution.interfaces in 'factory\interfaces\br.com.factorysolution.interfaces.pas',
  br.com.factorysolution.guarana in 'factory\interfaces\impl\br.com.factorysolution.guarana.pas',
  br.com.factorysolution.fanta in 'factory\interfaces\impl\br.com.factorysolution.fanta.pas',
  br.com.factorysolution.colonia in 'factory\interfaces\impl\br.com.factorysolution.colonia.pas',
  br.com.factorysolution.skol in 'factory\interfaces\impl\br.com.factorysolution.skol.pas',
  br.com.factorysolution.factory in 'factory\interfaces\factory\br.com.factorysolution.factory.pas',
  br.com.factorysolution.abstractfactory in 'factory\interfaces\factory\br.com.factorysolution.abstractfactory.pas',
  br.com.factorycolution.singleton in 'singleton\br.com.factorycolution.singleton.pas',
  br.com.factorysolution.prototype.interfaces in 'prototype\br.com.factorysolution.prototype.interfaces.pas',
  br.com.factorysolution.prototype.pessoa in 'prototype\impl\br.com.factorysolution.prototype.pessoa.pas',
  br.com.factorysolution.facade.interfaces in 'facade\br.com.factorysolution.facade.interfaces.pas',
  br.com.factorysolution.facade.cotacao in 'facade\impl\br.com.factorysolution.facade.cotacao.pas',
  br.com.factorysolution.facade.precomedio in 'facade\impl\br.com.factorysolution.facade.precomedio.pas',
  br.com.factorysolution.facade.markup in 'facade\impl\br.com.factorysolution.facade.markup.pas',
  br.com.factorysolution.facade.impl in 'facade\impl\br.com.factorysolution.facade.impl.pas' {$R *.res},
  br.com.factorysolution.command.Interfaces in 'command\br.com.factorysolution.command.Interfaces.pas',
  br.com.factorysolution.command.notafiscal.criar in 'command\br.com.factorysolution.command.notafiscal.criar.pas',
  br.com.factorysolution.command.notafiscal.email in 'command\br.com.factorysolution.command.notafiscal.email.pas',
  br.com.factorysolution.command.notafiscal.enviar in 'command\br.com.factorysolution.command.notafiscal.enviar.pas',
  br.com.factorysolution.command.notafiscal.gravar in 'command\br.com.factorysolution.command.notafiscal.gravar.pas',
  br.com.factorysolution.command.notafiscal.invoker in 'command\br.com.factorysolution.command.notafiscal.invoker.pas',
  br.com.factorysolution.command.notafiscal in 'command\br.com.factorysolution.command.notafiscal.pas',
  br.com.factorysolution.command.notafiscal.validar in 'command\br.com.factorysolution.command.notafiscal.validar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
