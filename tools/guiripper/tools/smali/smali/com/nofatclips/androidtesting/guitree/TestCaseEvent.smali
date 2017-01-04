.class public Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;
.super Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;
.source "TestCaseEvent.java"

# interfaces
.implements Lcom/nofatclips/androidtesting/model/UserEvent;


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "EVENT"

    sput-object v0, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->TAG:Ljava/lang/String;

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
    sget-object v0, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseInteraction;-><init>(Lcom/nofatclips/androidtesting/xml/XmlGraph;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 25
    sget-object v0, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->TAG:Ljava/lang/String;

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

.method public static createEvent(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;
    .locals 1
    .parameter "theSession"

    .prologue
    .line 81
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;

    invoke-direct {v0, p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;-><init>(Lcom/nofatclips/androidtesting/xml/XmlGraph;)V

    .line 82
    .local v0, event:Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;
    return-object v0
.end method

.method public static createEvent(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;
    .locals 1
    .parameter "dom"

    .prologue
    .line 86
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;

    invoke-direct {v0, p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;-><init>(Lorg/w3c/dom/Document;)V

    .line 87
    .local v0, event:Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-static {v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->createEvent(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;

    move-result-object v0

    .line 92
    .local v0, that:Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->setType(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->setValue(Ljava/lang/String;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->setId(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->setDescription(Ljava/lang/String;)V

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v1

    invoke-interface {v1}, Lcom/nofatclips/androidtesting/model/WidgetState;->clone()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->setWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)V

    .line 101
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
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->clone()Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "desc"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenshot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "screenshot"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/WrapperInterface;
    .locals 1
    .parameter "e"

    .prologue
    .line 29
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;

    invoke-direct {v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 73
    const-string v0, "desc"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 41
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 69
    const-string v0, "desc"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 53
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setScreenshot(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 65
    const-string v0, "screenshot"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 37
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 49
    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
