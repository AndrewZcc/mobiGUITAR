.class public Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;
.super Lcom/nofatclips/androidtesting/xml/ElementWrapper;
.source "TestCaseTransition.java"

# interfaces
.implements Lcom/nofatclips/androidtesting/model/Transition;


# static fields
.field public static final TAG:Ljava/lang/String; = "TRANSITION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .parameter "dom"

    .prologue
    .line 28
    const-string v0, "TRANSITION"

    invoke-direct {p0, p1, v0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "transition"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>(Lorg/w3c/dom/Element;)V

    .line 25
    return-void
.end method

.method public static createTransition(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;
    .locals 6
    .parameter "dom"

    .prologue
    .line 89
    new-instance v4, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;

    invoke-direct {v4, p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;-><init>(Lorg/w3c/dom/Document;)V

    .line 90
    .local v4, t:Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;
    invoke-static {p0}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->createActivity(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v3

    .line 91
    .local v3, sa:Lcom/nofatclips/androidtesting/guitree/StartActivity;
    invoke-virtual {v4, v3}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->appendChild(Lcom/nofatclips/androidtesting/xml/ElementWrapper;)V

    .line 92
    const-string v5, "INPUTS"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 93
    .local v2, inputz:Lorg/w3c/dom/Element;
    invoke-virtual {v4, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->appendChild(Lorg/w3c/dom/Element;)V

    .line 94
    invoke-static {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->createEvent(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;

    move-result-object v0

    .line 95
    .local v0, e:Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;
    invoke-virtual {v4, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->appendChild(Lcom/nofatclips/androidtesting/xml/ElementWrapper;)V

    .line 96
    invoke-static {p0}, Lcom/nofatclips/androidtesting/guitree/FinalActivity;->createActivity(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/FinalActivity;

    move-result-object v1

    .line 97
    .local v1, fa:Lcom/nofatclips/androidtesting/guitree/FinalActivity;
    invoke-virtual {v4, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->appendChild(Lcom/nofatclips/androidtesting/xml/ElementWrapper;)V

    .line 98
    return-object v4
.end method


# virtual methods
.method public addInput(Lcom/nofatclips/androidtesting/model/UserInput;)V
    .locals 2
    .parameter "i"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->eventProperties()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserInput;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 62
    return-void
.end method

.method public clone()Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-static {v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->createTransition(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;

    move-result-object v1

    .line 103
    .local v1, t:Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getStartActivity()Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->clone()Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->setStartActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 104
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getEvent()Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->clone()Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->setEvent(Lcom/nofatclips/androidtesting/model/UserEvent;)V

    .line 108
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getFinalActivity()Lcom/nofatclips/androidtesting/guitree/FinalActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nofatclips/androidtesting/guitree/FinalActivity;->clone()Lcom/nofatclips/androidtesting/guitree/FinalActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->setFinalActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 109
    return-object v1

    .line 104
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/UserInput;

    .line 105
    .local v0, i:Lcom/nofatclips/androidtesting/model/UserInput;
    check-cast v0, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;

    .end local v0           #i:Lcom/nofatclips/androidtesting/model/UserInput;
    invoke-virtual {v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->clone()Lcom/nofatclips/androidtesting/guitree/TestCaseInput;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->addInput(Lcom/nofatclips/androidtesting/model/UserInput;)V

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
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->clone()Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;

    move-result-object v0

    return-object v0
.end method

.method public eventProperties()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getEvent()Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;
    .locals 3

    .prologue
    .line 65
    new-instance v1, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->eventProperties()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {v1, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;-><init>(Lorg/w3c/dom/Element;)V

    return-object v1
.end method

.method public bridge synthetic getEvent()Lcom/nofatclips/androidtesting/model/UserEvent;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getEvent()Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;

    move-result-object v0

    return-object v0
.end method

.method public getFinalActivity()Lcom/nofatclips/androidtesting/guitree/FinalActivity;
    .locals 3

    .prologue
    .line 73
    new-instance v1, Lcom/nofatclips/androidtesting/guitree/FinalActivity;

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->eventProperties()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {v1, v0}, Lcom/nofatclips/androidtesting/guitree/FinalActivity;-><init>(Lorg/w3c/dom/Element;)V

    return-object v1
.end method

.method public bridge synthetic getFinalActivity()Lcom/nofatclips/androidtesting/model/ActivityState;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getFinalActivity()Lcom/nofatclips/androidtesting/guitree/FinalActivity;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "id_transition"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartActivity()Lcom/nofatclips/androidtesting/guitree/StartActivity;
    .locals 3

    .prologue
    .line 45
    new-instance v1, Lcom/nofatclips/androidtesting/guitree/StartActivity;

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->eventProperties()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {v1, v0}, Lcom/nofatclips/androidtesting/guitree/StartActivity;-><init>(Lorg/w3c/dom/Element;)V

    return-object v1
.end method

.method public bridge synthetic getStartActivity()Lcom/nofatclips/androidtesting/model/ActivityState;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getStartActivity()Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v0

    return-object v0
.end method

.method public getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;
    .locals 1
    .parameter "e"

    .prologue
    .line 41
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;

    invoke-direct {v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public bridge synthetic getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/WrapperInterface;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;

    move-result-object v0

    return-object v0
.end method

.method public inputs()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserInput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v1, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->eventProperties()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    new-instance v2, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;

    invoke-direct {v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;-><init>(Lorg/w3c/dom/Element;Lcom/nofatclips/androidtesting/model/WrapperInterface;)V

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserInput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->inputs()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setElement(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "transition"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->setElement(Lorg/w3c/dom/Element;)V

    .line 34
    return-void
.end method

.method public setEvent(Lcom/nofatclips/androidtesting/model/UserEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getEvent()Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 70
    return-void
.end method

.method public setFinalActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getFinalActivity()Lcom/nofatclips/androidtesting/guitree/FinalActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nofatclips/androidtesting/guitree/FinalActivity;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 78
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "id_transition"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public setStartActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->getStartActivity()Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 50
    return-void
.end method
