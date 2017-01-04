.class public Lit/unina/androidripper/automation/utils/AndroidConsoleSocket;
.super Ljava/lang/Object;
.source "AndroidConsoleSocket.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callNumber(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gsm call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lit/unina/androidripper/automation/utils/AndroidConsoleSocket;->send(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static hangUp(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gsm cancel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lit/unina/androidripper/automation/utils/AndroidConsoleSocket;->send(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static send(Ljava/lang/String;)V
    .locals 6
    .parameter "cmd"

    .prologue
    .line 16
    :try_start_0
    new-instance v3, Ljava/net/Socket;

    const-string v4, "10.0.2.2"

    sget v5, Lit/unina/androidripper/planning/Resources;->EMULATOR_PORT:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 19
    .local v3, s:Ljava/net/Socket;
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 20
    .local v1, out:Ljava/io/OutputStream;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 21
    .local v2, output:Ljava/io/PrintWriter;
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 28
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1           #out:Ljava/io/OutputStream;
    .end local v2           #output:Ljava/io/PrintWriter;
    .end local v3           #s:Ljava/net/Socket;
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "number"
    .parameter "message"

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lit/unina/androidripper/automation/utils/AndroidConsoleSocket;->send(Ljava/lang/String;)V

    .line 50
    return-void
.end method
