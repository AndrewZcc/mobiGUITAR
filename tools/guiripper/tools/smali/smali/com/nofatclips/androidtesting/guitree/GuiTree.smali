.class public Lcom/nofatclips/androidtesting/guitree/GuiTree;
.super Lcom/nofatclips/androidtesting/xml/XmlGraph;
.source "GuiTree.java"

# interfaces
.implements Lcom/nofatclips/androidtesting/model/Session;
.implements Lcom/nofatclips/androidtesting/model/Testable;
.implements Lcom/nofatclips/androidtesting/model/Plottable;


# static fields
.field public static final TAG:Ljava/lang/String; = "SESSION"


# instance fields
.field private guiTree:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 21
    const-string v1, "guitree.dtd"

    const-string v2, "SESSION"

    invoke-direct {p0, v1, v2}, Lcom/nofatclips/androidtesting/xml/XmlGraph;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lcom/nofatclips/androidtesting/guitree/GuiTree;->guiTree:Lorg/w3c/dom/Document;

    .line 23
    iget-object v1, p0, Lcom/nofatclips/androidtesting/guitree/GuiTree;->guiTree:Lorg/w3c/dom/Document;

    const-string v2, "SESSION"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 24
    .local v0, rootElement:Lorg/w3c/dom/Element;
    iget-object v1, p0, Lcom/nofatclips/androidtesting/guitree/GuiTree;->guiTree:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 25
    return-void
.end method

.method public static fromXml(Ljava/io/File;)Lcom/nofatclips/androidtesting/guitree/GuiTree;
    .locals 1
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/GuiTree;

    invoke-direct {v0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;-><init>()V

    .line 224
    .local v0, g:Lcom/nofatclips/androidtesting/guitree/GuiTree;
    invoke-virtual {v0, p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->parse(Ljava/io/File;)V

    .line 225
    return-object v0
.end method


# virtual methods
.method public addCrashedTrace(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 238
    const-string v0, "crash"

    invoke-virtual {p0, p1, v0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->addFailedTrace(Lcom/nofatclips/androidtesting/model/Trace;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public addFailedTrace(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 242
    const-string v0, "fail"

    invoke-virtual {p0, p1, v0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->addFailedTrace(Lcom/nofatclips/androidtesting/model/Trace;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method protected addFailedTrace(Lcom/nofatclips/androidtesting/model/Trace;Ljava/lang/String;)V
    .locals 2
    .parameter "t"
    .parameter "failType"

    .prologue
    .line 246
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/nofatclips/androidtesting/model/Trace;->setFailed(Z)V

    .line 247
    invoke-static {p0}, Lcom/nofatclips/androidtesting/guitree/FinalActivity;->createActivity(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/FinalActivity;

    move-result-object v0

    .line 248
    .local v0, fail:Lcom/nofatclips/androidtesting/guitree/FinalActivity;
    invoke-virtual {v0, p2}, Lcom/nofatclips/androidtesting/guitree/FinalActivity;->setName(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p2}, Lcom/nofatclips/androidtesting/guitree/FinalActivity;->setId(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, p2}, Lcom/nofatclips/androidtesting/guitree/FinalActivity;->setTitle(Ljava/lang/String;)V

    .line 251
    invoke-interface {p1, v0}, Lcom/nofatclips/androidtesting/model/Trace;->setFinalActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->addTrace(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 253
    return-void
.end method

.method public addTrace(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/Trace;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 235
    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "app"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseActivity()Lcom/nofatclips/androidtesting/model/ActivityState;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->traces()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/Trace;

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/Trace;->transitions()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/Transition;

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/Transition;->getStartActivity()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "class_name"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    .line 195
    .local v0, hasClassName:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "class_name"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->guessClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getComparationWidgets()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "comparation_widgets"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 161
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "comparation_widgets"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "date_time"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDom()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nofatclips/androidtesting/guitree/GuiTree;->guiTree:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getInAndOutFocus()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "in_and_out_focus"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    .line 147
    .local v0, hasClassName:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "in_and_out_focus"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method

.method public getMaxDepth()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "max_depth"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 134
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "max_depth"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "package_name"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    .line 183
    .local v0, hasClassName:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "package_name"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->guessPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRandomSeed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "random_seed"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 117
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "random_seed"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSleepAfterEvent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "event_sleep"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 78
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "event_sleep"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSleepAfterRestart()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "restart_sleep"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 91
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "restart_sleep"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSleepAfterTask()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "end_task_sleep"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 104
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "end_task_sleep"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSleepOnThrobber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "throbber_sleep"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 170
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "throbber_sleep"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStateFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "state_file"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 152
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "state_file"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public guessClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getBaseActivity()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v1

    invoke-interface {v1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public guessPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, s:Ljava/lang/String;
    const-string v3, "[a-zA-Z0-9_]+(\\.[a-zA-Z0-9_]+)+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 189
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 190
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public importState(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    .locals 4
    .parameter "fromXml"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/w3c/dom/Document;->adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 275
    .local v1, state:Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/nofatclips/androidtesting/guitree/FinalActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/nofatclips/androidtesting/guitree/FinalActivity;->createActivity(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/FinalActivity;

    move-result-object v0

    .line 276
    .local v0, imported:Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->setElement(Lorg/w3c/dom/Element;)V

    .line 277
    return-object v0

    .line 275
    .end local v0           #imported:Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    :cond_0
    invoke-static {p0}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->createActivity(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/nofatclips/androidtesting/model/Trace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->traces()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/File;)V
    .locals 1
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/nofatclips/androidtesting/guitree/GuiTree;->guiTree:Lorg/w3c/dom/Document;

    .line 38
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 4
    .parameter "xml"

    .prologue
    .line 42
    :try_start_0
    invoke-static {}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lcom/nofatclips/androidtesting/guitree/GuiTree;->guiTree:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 53
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v0

    .line 48
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 51
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeTrace(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/Trace;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 257
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 2
    .parameter "n"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "app"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 2
    .parameter "cname"

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "class_name"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setComparationWidgets(Ljava/lang/String;)V
    .locals 2
    .parameter "commaSeparatedTypes"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "comparation_widgets"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "date_time"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public setInAndOutFocus(Ljava/lang/String;)V
    .locals 2
    .parameter "val"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "in_and_out_focus"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public setInAndOutFocus(Z)V
    .locals 1
    .parameter "trueOrFalse"

    .prologue
    .line 215
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setInAndOutFocus(Ljava/lang/String;)V

    .line 216
    return-void

    .line 215
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setMaxDepth(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 138
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setMaxDepth(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setMaxDepth(Ljava/lang/String;)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "max_depth"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "pname"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "package_name"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public setRandomSeed(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 121
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setRandomSeed(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public setRandomSeed(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 125
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setRandomSeed(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setRandomSeed(Ljava/lang/String;)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "random_seed"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setSleepAfterEvent(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setSleepAfterEvent(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public setSleepAfterEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "event_sleep"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setSleepAfterRestart(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setSleepAfterRestart(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setSleepAfterRestart(Ljava/lang/String;)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "restart_sleep"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setSleepAfterTask(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 108
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setSleepAfterTask(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public setSleepAfterTask(Ljava/lang/String;)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "end_task_sleep"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public setSleepOnThrobber(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 174
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->setSleepOnThrobber(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public setSleepOnThrobber(Ljava/lang/String;)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "throbber_sleep"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public setStateFileName(Ljava/lang/String;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "state_file"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public traces()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/nofatclips/androidtesting/model/Trace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 263
    .local v0, session:Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SESSION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    new-instance v1, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;

    new-instance v2, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;

    invoke-direct {v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;-><init>(Lorg/w3c/dom/Element;Lcom/nofatclips/androidtesting/model/WrapperInterface;)V

    .line 266
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
