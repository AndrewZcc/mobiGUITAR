.class public abstract Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;
.super Lcom/nofatclips/androidtesting/xml/ElementWrapper;
.source "TestCaseInteraction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/nofatclips/androidtesting/xml/XmlGraph;Ljava/lang/String;)V
    .locals 0
    .parameter "g"
    .parameter "tag"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>(Lcom/nofatclips/androidtesting/xml/XmlGraph;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 0
    .parameter "d"
    .parameter "tag"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>(Lorg/w3c/dom/Element;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;
    .locals 3

    .prologue
    .line 29
    new-instance v1, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {v1, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;-><init>(Lorg/w3c/dom/Element;)V

    return-object v1
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v0

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v0

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v0

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)V
    .locals 3
    .parameter "newChild"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v1

    invoke-interface {v1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 34
    .local v0, oldChild:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 37
    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->setId(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public setWidgetName(Ljava/lang/String;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->setName(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public setWidgetType(Ljava/lang/String;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->setType(Ljava/lang/String;)V

    .line 53
    return-void
.end method
