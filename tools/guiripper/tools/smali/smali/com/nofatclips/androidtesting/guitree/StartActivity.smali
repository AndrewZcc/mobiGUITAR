.class public Lcom/nofatclips/androidtesting/guitree/StartActivity;
.super Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
.source "StartActivity.java"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;-><init>(Lorg/w3c/dom/Element;)V

    .line 12
    return-void
.end method

.method public static createActivity(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/StartActivity;
    .locals 1
    .parameter "session"

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->createActivity(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v0

    return-object v0
.end method

.method public static createActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lcom/nofatclips/androidtesting/guitree/StartActivity;
    .locals 3
    .parameter "originalActivity"

    .prologue
    .line 40
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/ActivityState;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 41
    .local v0, dom:Lorg/w3c/dom/Document;
    invoke-static {v0}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->createActivity(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v1

    .line 42
    .local v1, newActivity:Lcom/nofatclips/androidtesting/guitree/StartActivity;
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/ActivityState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->setName(Ljava/lang/String;)V

    .line 43
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/ActivityState;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->setTitle(Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/ActivityState;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->setId(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, p0}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->copyDescriptionFrom(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 48
    invoke-virtual {v1, p0}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->copySupportedEventsFrom(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 51
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/ActivityState;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->setUniqueId(Ljava/lang/String;)V

    .line 52
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/ActivityState;->getScreenshot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->setScreenshot(Ljava/lang/String;)V

    .line 53
    return-object v1
.end method

.method public static createActivity(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/StartActivity;
    .locals 1
    .parameter "dom"

    .prologue
    .line 23
    invoke-static {}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->createActivity(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v0

    return-object v0
.end method

.method public static createActivity(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/nofatclips/androidtesting/guitree/StartActivity;
    .locals 4
    .parameter "dom"
    .parameter "tag"

    .prologue
    .line 27
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 28
    .local v1, el:Lorg/w3c/dom/Element;
    const-string v3, "DESCRIPTION"

    invoke-interface {p0, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 29
    .local v0, desc:Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 32
    const-string v3, "SUPPORTED_EVENTS"

    invoke-interface {p0, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 33
    .local v2, supported_events:Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 36
    new-instance v3, Lcom/nofatclips/androidtesting/guitree/StartActivity;

    invoke-direct {v3, v1}, Lcom/nofatclips/androidtesting/guitree/StartActivity;-><init>(Lorg/w3c/dom/Element;)V

    return-object v3
.end method

.method public static bridge synthetic createActivity(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-static {p0}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->createActivity(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic createActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-static {p0}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->createActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic createActivity(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-static {p0}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->createActivity(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic createActivity(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->createActivity(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v0

    return-object v0
.end method

.method public static final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "START_ACTIVITY"

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/nofatclips/androidtesting/guitree/StartActivity;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->createActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->clone()Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v0

    return-object v0
.end method
