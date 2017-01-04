.class public Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;
.super Lcom/nofatclips/androidtesting/xml/ElementWrapper;
.source "TestCaseTrace.java"

# interfaces
.implements Lcom/nofatclips/androidtesting/model/Trace;


# static fields
.field public static final TAG:Ljava/lang/String; = "TRACE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/nofatclips/androidtesting/guitree/GuiTree;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;-><init>(Lorg/w3c/dom/Document;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .parameter "dom"

    .prologue
    .line 30
    const-string v0, "TRACE"

    invoke-direct {p0, p1, v0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "trace"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>(Lorg/w3c/dom/Element;)V

    .line 23
    return-void
.end method


# virtual methods
.method public addTransition(Lcom/nofatclips/androidtesting/model/Transition;)V
    .locals 1
    .parameter "tail"

    .prologue
    .line 90
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/Transition;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->appendChild(Lorg/w3c/dom/Element;)V

    .line 91
    return-void
.end method

.method public clone()Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;
    .locals 5

    .prologue
    .line 95
    new-instance v2, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->getElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;-><init>(Lorg/w3c/dom/Document;)V

    .line 96
    .local v2, t:Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->getFailed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->setFailed(Ljava/lang/String;)V

    .line 101
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->setAsync(Z)V

    .line 102
    return-object v2

    .line 96
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/Transition;

    .line 97
    .local v0, child:Lcom/nofatclips/androidtesting/model/Transition;
    check-cast v0, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;

    .end local v0           #child:Lcom/nofatclips/androidtesting/model/Transition;
    invoke-virtual {v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->clone()Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;

    move-result-object v1

    .line 98
    .local v1, newChild:Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;
    invoke-virtual {v2, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->addTransition(Lcom/nofatclips/androidtesting/model/Transition;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->clone()Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;

    move-result-object v0

    return-object v0
.end method

.method protected getAsync()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "async"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "date_time"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFailed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "fail"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFinalTransition()Lcom/nofatclips/androidtesting/model/Transition;
    .locals 4

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, lastTransition:Lcom/nofatclips/androidtesting/model/Transition;
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    return-object v0

    .line 114
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nofatclips/androidtesting/model/Transition;

    .line 115
    .local v1, t:Lcom/nofatclips/androidtesting/model/Transition;
    move-object v0, v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;
    .locals 1
    .parameter "e"

    .prologue
    .line 72
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;

    invoke-direct {v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public bridge synthetic getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/WrapperInterface;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;

    move-result-object v0

    return-object v0
.end method

.method public isAsync()Z
    .locals 2

    .prologue
    .line 47
    const-string v0, "async"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_0
    const-string v0, "async"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 42
    const-string v0, "fail"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    const-string v0, "fail"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/nofatclips/androidtesting/model/Transition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->transitions()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setAsync(Z)V
    .locals 2
    .parameter "failure"

    .prologue
    .line 56
    const-string v1, "async"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 56
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 121
    const-string v0, "date_time"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public setFailed(Ljava/lang/String;)V
    .locals 1
    .parameter "failure"

    .prologue
    .line 60
    const-string v0, "fail"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public setFailed(Z)V
    .locals 2
    .parameter "failure"

    .prologue
    .line 52
    const-string v1, "fail"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 52
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setFinalActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 1
    .parameter "theActivity"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->getFinalTransition()Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v0

    .line 107
    .local v0, lastTransition:Lcom/nofatclips/androidtesting/model/Transition;
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, p1}, Lcom/nofatclips/androidtesting/model/Transition;->setFinalActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 110
    :cond_0
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 38
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public transitions()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/nofatclips/androidtesting/model/Transition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 79
    .local v0, t:Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRACE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v1, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;

    new-instance v2, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;

    invoke-direct {v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;-><init>(Lorg/w3c/dom/Element;Lcom/nofatclips/androidtesting/model/WrapperInterface;)V

    .line 82
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
