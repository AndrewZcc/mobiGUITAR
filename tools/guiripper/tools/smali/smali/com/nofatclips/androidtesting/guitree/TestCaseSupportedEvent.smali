.class public Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;
.super Lcom/nofatclips/androidtesting/xml/ElementWrapper;
.source "TestCaseSupportedEvent.java"

# interfaces
.implements Lcom/nofatclips/androidtesting/model/SupportedEvent;


# static fields
.field public static final TAG:Ljava/lang/String; = "SUPPORTED_EVENT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>()V

    .line 14
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

.method public static createSupportedEvent(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;
    .locals 1
    .parameter "session"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->createSupportedEvent(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;

    move-result-object v0

    return-object v0
.end method

.method public static createSupportedEvent(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;
    .locals 2
    .parameter "dom"

    .prologue
    .line 46
    const-string v1, "SUPPORTED_EVENT"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 47
    .local v0, el:Lorg/w3c/dom/Element;
    new-instance v1, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;

    invoke-direct {v1, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;-><init>(Lorg/w3c/dom/Element;)V

    return-object v1
.end method


# virtual methods
.method public clone()Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    const-string v3, "SUPPORTED_EVENT"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 57
    .local v0, el:Lorg/w3c/dom/Element;
    new-instance v1, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;

    invoke-direct {v1, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;-><init>(Lorg/w3c/dom/Element;)V

    .line 58
    .local v1, newOne:Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->getWidgetUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->setWidgetUniqueId(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->setEventType(Ljava/lang/String;)V

    .line 60
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/nofatclips/androidtesting/model/SupportedEvent;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->clone()Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->clone()Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 65
    instance-of v2, p1, Lcom/nofatclips/androidtesting/model/SupportedEvent;

    if-nez v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 66
    check-cast v0, Lcom/nofatclips/androidtesting/model/SupportedEvent;

    .line 68
    .local v0, that:Lcom/nofatclips/androidtesting/model/SupportedEvent;
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->getWidgetUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getWidgetUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "event_type"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetUniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "widget_uid"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/WrapperInterface;
    .locals 1
    .parameter "e"

    .prologue
    .line 22
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;

    invoke-direct {v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 37
    const-string v0, "event_type"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setWidgetUniqueId(Ljava/lang/String;)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 32
    const-string v0, "widget_uid"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method
