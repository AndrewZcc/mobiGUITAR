.class public abstract Lit/unina/androidripper/storage/CrawlerLog;
.super Ljava/lang/Object;
.source "CrawlerLog.java"


# instance fields
.field private defaultLevel:I

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "androidripper"

    iput-object v0, p0, Lit/unina/androidripper/storage/CrawlerLog;->tag:Ljava/lang/String;

    .line 6
    const/4 v0, 0x1

    iput v0, p0, Lit/unina/androidripper/storage/CrawlerLog;->defaultLevel:I

    return-void
.end method


# virtual methods
.method public getLogLevel()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lit/unina/androidripper/storage/CrawlerLog;->defaultLevel:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lit/unina/androidripper/storage/CrawlerLog;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public logLn(Ljava/lang/String;)V
    .locals 2
    .parameter "textToLog"

    .prologue
    .line 25
    invoke-virtual {p0}, Lit/unina/androidripper/storage/CrawlerLog;->getLogLevel()I

    move-result v0

    invoke-virtual {p0}, Lit/unina/androidripper/storage/CrawlerLog;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lit/unina/androidripper/storage/CrawlerLog;->logLn(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    return-void
.end method

.method public logLn(Ljava/lang/String;I)V
    .locals 1
    .parameter "textToLog"
    .parameter "logLevel"

    .prologue
    .line 29
    invoke-virtual {p0}, Lit/unina/androidripper/storage/CrawlerLog;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lit/unina/androidripper/storage/CrawlerLog;->logLn(Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    return-void
.end method

.method public abstract logLn(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public logLn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "textToLog"
    .parameter "tag"

    .prologue
    .line 33
    invoke-virtual {p0}, Lit/unina/androidripper/storage/CrawlerLog;->getLogLevel()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lit/unina/androidripper/storage/CrawlerLog;->logLn(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 17
    iput p1, p0, Lit/unina/androidripper/storage/CrawlerLog;->defaultLevel:I

    .line 18
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 9
    iput-object p1, p0, Lit/unina/androidripper/storage/CrawlerLog;->tag:Ljava/lang/String;

    .line 10
    return-void
.end method
