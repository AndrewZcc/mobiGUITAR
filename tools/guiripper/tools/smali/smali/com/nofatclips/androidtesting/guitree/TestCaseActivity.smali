.class public Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
.super Lcom/nofatclips/androidtesting/xml/ElementWrapper;
.source "TestCaseActivity.java"

# interfaces
.implements Lcom/nofatclips/androidtesting/model/ActivityState;


# static fields
.field public static final DESC_TAG:Ljava/lang/String; = "DESCRIPTION"

.field public static final SUPPORTED_EVENTS_TAG:Ljava/lang/String; = "SUPPORTED_EVENTS"


# instance fields
.field private description:Lorg/w3c/dom/Element;

.field private supported_events:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>(Lorg/w3c/dom/Element;)V

    .line 24
    return-void
.end method

.method public static createActivity(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    .locals 1
    .parameter "session"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->createActivity(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;

    move-result-object v0

    return-object v0
.end method

.method public static createActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    .locals 3
    .parameter "originalActivity"

    .prologue
    .line 111
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/ActivityState;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 112
    .local v0, dom:Lorg/w3c/dom/Document;
    invoke-static {v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->createActivity(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;

    move-result-object v1

    .line 113
    .local v1, newActivity:Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    invoke-virtual {v1, p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->copyDescriptionFrom(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 116
    invoke-virtual {v1, p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->copySupportedEventsFrom(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 119
    return-object v1
.end method

.method public static createActivity(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    .locals 1
    .parameter "dom"

    .prologue
    .line 102
    invoke-static {}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->createActivity(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;

    move-result-object v0

    return-object v0
.end method

.method public static createActivity(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    .locals 4
    .parameter "dom"
    .parameter "tag"

    .prologue
    .line 88
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 89
    .local v1, el:Lorg/w3c/dom/Element;
    const-string v3, "DESCRIPTION"

    invoke-interface {p0, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 90
    .local v0, desc:Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 93
    const-string v3, "SUPPORTED_EVENTS"

    invoke-interface {p0, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 94
    .local v2, supported_events:Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 98
    new-instance v3, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;

    invoke-direct {v3, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;-><init>(Lorg/w3c/dom/Element;)V

    return-object v3
.end method

.method public static getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const-string v0, "ACTIVITY"

    return-object v0
.end method


# virtual methods
.method public addSupportedEvent(Lcom/nofatclips/androidtesting/model/SupportedEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->supported_events:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 189
    return-void
.end method

.method public addWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->description:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 207
    return-void
.end method

.method public clone()Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    .locals 1

    .prologue
    .line 202
    invoke-static {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->createActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;

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
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->clone()Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;

    move-result-object v0

    return-object v0
.end method

.method public copyDescriptionFrom(Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 3
    .parameter "originalActivity"

    .prologue
    .line 123
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getDescriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->setDescriptionId(Ljava/lang/String;)V

    .line 124
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    return-void

    .line 124
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 125
    .local v0, w:Lcom/nofatclips/androidtesting/model/WidgetState;
    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->clone()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->addWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)V

    goto :goto_0
.end method

.method public copySupportedEventsFrom(Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 3
    .parameter "originalActivity"

    .prologue
    .line 171
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getSupportedEvents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    return-void

    .line 171
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/SupportedEvent;

    .line 172
    .local v0, s:Lcom/nofatclips/androidtesting/model/SupportedEvent;
    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->clone()Lcom/nofatclips/androidtesting/model/SupportedEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->addSupportedEvent(Lcom/nofatclips/androidtesting/model/SupportedEvent;)V

    goto :goto_0
.end method

.method public getDescriptionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->description:Lorg/w3c/dom/Element;

    const-string v1, "id"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->description:Lorg/w3c/dom/Element;

    const-string v1, "id"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenshot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "screenshot"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedEvents()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nofatclips/androidtesting/model/SupportedEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nofatclips/androidtesting/model/SupportedEvent;>;"
    iget-object v2, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->supported_events:Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->supported_events:Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUPPORTED_EVENTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    new-instance v0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;

    iget-object v2, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->supported_events:Lorg/w3c/dom/Element;

    new-instance v3, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;

    invoke-direct {v3}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;-><init>(Lorg/w3c/dom/Element;Lcom/nofatclips/androidtesting/model/WrapperInterface;)V

    .line 153
    .local v0, list:Lcom/nofatclips/androidtesting/xml/NodeListWrapper;,"Lcom/nofatclips/androidtesting/xml/NodeListWrapper<Lcom/nofatclips/androidtesting/model/SupportedEvent;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    .end local v0           #list:Lcom/nofatclips/androidtesting/xml/NodeListWrapper;,"Lcom/nofatclips/androidtesting/xml/NodeListWrapper<Lcom/nofatclips/androidtesting/model/SupportedEvent;>;"
    :cond_0
    return-object v1

    .line 154
    .restart local v0       #list:Lcom/nofatclips/androidtesting/xml/NodeListWrapper;,"Lcom/nofatclips/androidtesting/xml/NodeListWrapper<Lcom/nofatclips/androidtesting/model/SupportedEvent;>;"
    :cond_1
    invoke-virtual {v0}, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->next()Lcom/nofatclips/androidtesting/model/WrapperInterface;

    move-result-object v2

    check-cast v2, Lcom/nofatclips/androidtesting/model/SupportedEvent;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSupportedEventsByWidgetUniqueId(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nofatclips/androidtesting/model/SupportedEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nofatclips/androidtesting/model/SupportedEvent;>;"
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->getSupportedEvents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 167
    return-object v0

    .line 163
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nofatclips/androidtesting/model/SupportedEvent;

    .line 164
    .local v1, se:Lcom/nofatclips/androidtesting/model/SupportedEvent;
    invoke-interface {v1}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getWidgetUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "unique_id"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    .locals 1
    .parameter "e"

    .prologue
    .line 27
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;

    invoke-direct {v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public bridge synthetic getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/WrapperInterface;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;

    move-result-object v0

    return-object v0
.end method

.method public hasWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
    .locals 3
    .parameter "widgetToCheck"

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 210
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 211
    .local v0, stored:Lcom/nofatclips/androidtesting/model/WidgetState;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCrash()Z
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isExit()Z
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFailure()Z
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->description:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DESCRIPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;

    iget-object v1, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->description:Lorg/w3c/dom/Element;

    new-instance v2, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;

    invoke-direct {v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;-><init>(Lorg/w3c/dom/Element;Lcom/nofatclips/androidtesting/model/WrapperInterface;)V

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markAsCrash()V
    .locals 1

    .prologue
    .line 238
    const-string v0, "crash"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->setId(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public markAsExit()V
    .locals 1

    .prologue
    .line 234
    const-string v0, "exit"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->setId(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public markAsFailure()V
    .locals 1

    .prologue
    .line 242
    const-string v0, "fail"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->setId(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public resetDescription()V
    .locals 4

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    return-void

    .line 130
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 131
    .local v0, w:Lcom/nofatclips/androidtesting/model/WidgetState;
    iget-object v2, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->description:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public resetSupportedEvents()V
    .locals 4

    .prologue
    .line 178
    iget-object v2, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->supported_events:Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->supported_events:Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 181
    .local v1, list:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 184
    .end local v0           #i:I
    .end local v1           #list:Lorg/w3c/dom/NodeList;
    :cond_0
    return-void

    .line 182
    .restart local v0       #i:I
    .restart local v1       #list:Lorg/w3c/dom/NodeList;
    :cond_1
    iget-object v2, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->supported_events:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setDescriptionId(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->description:Lorg/w3c/dom/Element;

    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setElement(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->setElement(Lorg/w3c/dom/Element;)V

    .line 33
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    iput-object v0, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->description:Lorg/w3c/dom/Element;

    .line 36
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    iput-object v0, p0, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->supported_events:Lorg/w3c/dom/Element;

    .line 38
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 68
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 52
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public setScreenshot(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 84
    const-string v0, "screenshot"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 60
    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 76
    const-string v0, "unique_id"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public supportsEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "uid"
    .parameter "event"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->getSupportedEvents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 193
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/SupportedEvent;

    .line 194
    .local v0, se:Lcom/nofatclips/androidtesting/model/SupportedEvent;
    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getWidgetUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    const/4 v1, 0x1

    goto :goto_0
.end method
