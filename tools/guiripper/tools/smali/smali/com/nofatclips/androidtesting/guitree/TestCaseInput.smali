.class public Lcom/nofatclips/androidtesting/guitree/TestCaseInput;
.super Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;
.source "TestCaseInput.java"

# interfaces
.implements Lcom/nofatclips/androidtesting/model/UserInput;


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const-string v0, "INPUT"

    sput-object v0, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/nofatclips/androidtesting/xml/XmlGraph;)V
    .locals 1
    .parameter "g"

    .prologue
    .line 21
    sget-object v0, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;-><init>(Lcom/nofatclips/androidtesting/xml/XmlGraph;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 25
    sget-object v0, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;-><init>(Lorg/w3c/dom/Element;)V

    .line 18
    return-void
.end method

.method public static createInput(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/TestCaseInput;
    .locals 1
    .parameter "theSession"

    .prologue
    .line 102
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;

    invoke-direct {v0, p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;-><init>(Lcom/nofatclips/androidtesting/xml/XmlGraph;)V

    .line 103
    .local v0, input:Lcom/nofatclips/androidtesting/guitree/TestCaseInput;
    return-object v0
.end method

.method public static createInput(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseInput;
    .locals 1
    .parameter "theSession"

    .prologue
    .line 107
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;

    invoke-direct {v0, p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/nofatclips/androidtesting/guitree/TestCaseInput;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-static {v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->createInput(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseInput;

    move-result-object v0

    .line 113
    .local v0, i:Lcom/nofatclips/androidtesting/guitree/TestCaseInput;
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->setType(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->setValue(Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->setId(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v1

    invoke-interface {v1}, Lcom/nofatclips/androidtesting/model/WidgetState;->clone()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->setWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)V

    .line 122
    return-object v0
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
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->clone()Lcom/nofatclips/androidtesting/guitree/TestCaseInput;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v0

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/WrapperInterface;
    .locals 1
    .parameter "e"

    .prologue
    .line 29
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;

    invoke-direct {v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 58
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 94
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 80
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 90
    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
