.class public Lit/unina/androidripper/guitree/GuiTreeAbstractor;
.super Ljava/lang/Object;
.source "GuiTreeAbstractor.java"

# interfaces
.implements Lit/unina/androidripper/model/Abstractor;
.implements Lit/unina/androidripper/model/FilterHandler;
.implements Lit/unina/androidripper/model/SaveStateListener;


# static fields
.field private static final ACTIVITY_PARAM_NAME:Ljava/lang/String; = "activityId"

.field public static final ACTOR_NAME:Ljava/lang/String; = "GuiTreeAbstractor"

.field private static final EVENT_PARAM_NAME:Ljava/lang/String; = "eventId"

.field private static final INPUT_PARAM_NAME:Ljava/lang/String; = "inputId"

.field private static final WIDGET_PARAM_NAME:Ljava/lang/String; = "widgetId"


# instance fields
.field private activityId:I

.field private baseActivity:Lcom/nofatclips/androidtesting/guitree/StartActivity;

.field private detector:Lit/unina/androidripper/model/TypeDetector;

.field private eventId:I

.field private filters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lit/unina/androidripper/model/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private inputId:I

.field private theListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lit/unina/androidripper/model/AbstractorListener;",
            ">;"
        }
    .end annotation
.end field

.field private theSession:Lcom/nofatclips/androidtesting/guitree/GuiTree;

.field private widgetId:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/GuiTree;

    invoke-direct {v0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;-><init>()V

    invoke-direct {p0, v0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;-><init>(Lcom/nofatclips/androidtesting/guitree/GuiTree;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/nofatclips/androidtesting/guitree/GuiTree;)V
    .locals 1
    .parameter "s"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->eventId:I

    .line 36
    iput v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->inputId:I

    .line 37
    iput v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->activityId:I

    .line 38
    iput v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->widgetId:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->theListeners:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->filters:Ljava/util/HashSet;

    .line 54
    invoke-virtual {p0, p1}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->setTheSession(Lcom/nofatclips/androidtesting/guitree/GuiTree;)V

    .line 55
    invoke-static {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->registerForSavingState(Lit/unina/androidripper/model/SaveStateListener;)V

    .line 56
    return-void
.end method

.method private addActivitySupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;)V
    .locals 1
    .parameter "a"
    .parameter "eventType"

    .prologue
    .line 292
    const-string v0, "act0"

    invoke-direct {p0, p1, v0, p2}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addSupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method private addSupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "a"
    .parameter "uid"
    .parameter "eventType"

    .prologue
    .line 297
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getTheSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;

    move-result-object v1

    invoke-static {v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;->createSupportedEvent(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/TestCaseSupportedEvent;

    move-result-object v0

    .line 298
    .local v0, supportedEvent:Lcom/nofatclips/androidtesting/model/SupportedEvent;
    invoke-interface {v0, p2}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->setWidgetUniqueId(Ljava/lang/String;)V

    .line 299
    invoke-interface {v0, p3}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->setEventType(Ljava/lang/String;)V

    .line 300
    invoke-interface {p1, v0}, Lcom/nofatclips/androidtesting/model/ActivityState;->addSupportedEvent(Lcom/nofatclips/androidtesting/model/SupportedEvent;)V

    .line 301
    return-void
.end method

.method private reflectWidget(Lcom/nofatclips/androidtesting/model/ActivityState;Landroid/view/View;Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;)V
    .locals 5
    .parameter "a"
    .parameter "v"
    .parameter "w"

    .prologue
    .line 249
    const/4 v2, 0x0

    .line 252
    .local v2, listenersMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    instance-of v3, p2, Landroid/opengl/GLSurfaceView;

    if-eqz v3, :cond_2

    .line 253
    const/4 v2, 0x0

    .line 257
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 258
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    invoke-virtual {p3}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addSupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 254
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :cond_2
    instance-of v3, p2, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 255
    invoke-static {p2}, Lit/unina/androidripper/helpers/ReflectionHelper;->reflectViewListeners(Landroid/view/View;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_0

    .line 265
    :cond_3
    :try_start_0
    const-string v3, "com.android.internal.view.menu.IconMenuItemView"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "act0"

    const-string v4, "openMenu"

    invoke-interface {p1, v3, v4}, Lcom/nofatclips/androidtesting/model/ActivityState;->supportsEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 268
    invoke-virtual {p3}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "click"

    invoke-direct {p0, p1, v3, v4}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addSupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_4
    :goto_2
    instance-of v3, p2, Landroid/widget/TabHost;

    if-eqz v3, :cond_5

    .line 278
    invoke-virtual {p3}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "swapTab"

    invoke-direct {p0, p1, v3, v4}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addSupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_5
    return-void

    .line 271
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private stubActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    .locals 2
    .parameter "theActivity"

    .prologue
    .line 321
    move-object v1, p1

    check-cast v1, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;

    invoke-virtual {v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->clone()Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;

    move-result-object v0

    .line 322
    .local v0, theStub:Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;
    invoke-virtual {v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->resetDescription()V

    .line 323
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;->setDescriptionId(Ljava/lang/String;)V

    .line 324
    return-object v0
.end method


# virtual methods
.method public addFilter(Lit/unina/androidripper/model/Filter;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 332
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->filters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method public createActivity(Lit/unina/androidripper/model/ActivityDescription;)Lcom/nofatclips/androidtesting/model/ActivityState;
    .locals 1
    .parameter "desc"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->createActivity(Lit/unina/androidripper/model/ActivityDescription;Z)Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v0

    return-object v0
.end method

.method public createActivity(Lit/unina/androidripper/model/ActivityDescription;Z)Lcom/nofatclips/androidtesting/model/ActivityState;
    .locals 6
    .parameter "desc"
    .parameter "start"

    .prologue
    .line 80
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getTheSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;

    move-result-object v5

    invoke-static {v5}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->createActivity(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v4

    .line 81
    .local v4, newActivity:Lcom/nofatclips/androidtesting/model/ActivityState;
    :goto_0
    invoke-interface {p1}, Lit/unina/androidripper/model/ActivityDescription;->getActivityName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nofatclips/androidtesting/model/ActivityState;->setName(Ljava/lang/String;)V

    .line 82
    invoke-interface {p1}, Lit/unina/androidripper/model/ActivityDescription;->getActivityTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nofatclips/androidtesting/model/ActivityState;->setTitle(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getUniqueActivityId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nofatclips/androidtesting/model/ActivityState;->setUniqueId(Ljava/lang/String;)V

    .line 84
    invoke-interface {v4}, Lcom/nofatclips/androidtesting/model/ActivityState;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nofatclips/androidtesting/model/ActivityState;->setId(Ljava/lang/String;)V

    .line 85
    iget-object v5, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->filters:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/unina/androidripper/model/Filter;

    .line 86
    .local v0, f:Lit/unina/androidripper/model/Filter;
    invoke-interface {v0}, Lit/unina/androidripper/model/Filter;->clear()V

    goto :goto_1

    .line 80
    .end local v0           #f:Lit/unina/androidripper/model/Filter;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #newActivity:Lcom/nofatclips/androidtesting/model/ActivityState;
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getTheSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;

    move-result-object v5

    invoke-static {v5}, Lcom/nofatclips/androidtesting/guitree/FinalActivity;->createActivity(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/FinalActivity;

    move-result-object v4

    goto :goto_0

    .line 88
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #newActivity:Lcom/nofatclips/androidtesting/model/ActivityState;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->updateDescription(Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/ActivityDescription;Z)Z

    move-result v1

    .line 89
    .local v1, hasDescription:Z
    if-nez v1, :cond_2

    invoke-interface {v4}, Lcom/nofatclips/androidtesting/model/ActivityState;->markAsExit()V

    .line 90
    :cond_2
    iget-object v5, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->theListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lit/unina/androidripper/model/AbstractorListener;

    .line 91
    .local v3, listener:Lit/unina/androidripper/model/AbstractorListener;
    invoke-interface {v3, v4}, Lit/unina/androidripper/model/AbstractorListener;->onNewActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    goto :goto_2

    .line 93
    .end local v3           #listener:Lit/unina/androidripper/model/AbstractorListener;
    :cond_3
    return-object v4
.end method

.method public createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;
    .locals 4
    .parameter "target"
    .parameter "type"

    .prologue
    .line 340
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getTheSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;

    move-result-object v3

    invoke-static {v3}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->createEvent(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;

    move-result-object v2

    .line 341
    .local v2, newEvent:Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;
    if-nez p1, :cond_0

    .line 342
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getTheSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;

    move-result-object v3

    invoke-static {v3}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->createWidget(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;

    move-result-object p1

    .line 343
    const-string v3, "null"

    invoke-interface {p1, v3}, Lcom/nofatclips/androidtesting/model/WidgetState;->setType(Ljava/lang/String;)V

    .line 344
    const-string v3, "-1"

    invoke-interface {p1, v3}, Lcom/nofatclips/androidtesting/model/WidgetState;->setId(Ljava/lang/String;)V

    .line 345
    const-string v3, "null"

    invoke-interface {p1, v3}, Lcom/nofatclips/androidtesting/model/WidgetState;->setSimpleType(Ljava/lang/String;)V

    .line 346
    const-string v3, "w0"

    invoke-interface {p1, v3}, Lcom/nofatclips/androidtesting/model/WidgetState;->setUniqueId(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v2, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->setWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)V

    .line 351
    :goto_0
    invoke-virtual {v2, p2}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->setType(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getUniqueEventId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->setId(Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->theListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/androidripper/model/AbstractorListener;

    .line 354
    .local v1, listener:Lit/unina/androidripper/model/AbstractorListener;
    invoke-interface {v1, v2}, Lit/unina/androidripper/model/AbstractorListener;->onNewEvent(Lcom/nofatclips/androidtesting/model/UserEvent;)V

    goto :goto_1

    .line 349
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lit/unina/androidripper/model/AbstractorListener;
    :cond_0
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->clone()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/TestCaseEvent;->setWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)V

    goto :goto_0

    .line 356
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public createEvent(Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;
    .locals 1
    .parameter "type"

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v0

    return-object v0
.end method

.method public createInput(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserInput;
    .locals 4
    .parameter "target"
    .parameter "value"
    .parameter "type"

    .prologue
    .line 360
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getTheSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;

    move-result-object v3

    invoke-static {v3}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->createInput(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/TestCaseInput;

    move-result-object v2

    .line 361
    .local v2, newInput:Lcom/nofatclips/androidtesting/guitree/TestCaseInput;
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->clone()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->setWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)V

    .line 362
    invoke-virtual {v2, p2}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->setValue(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v2, p3}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->setType(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getUniqueInputId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nofatclips/androidtesting/guitree/TestCaseInput;->setId(Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->theListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/androidripper/model/AbstractorListener;

    .line 366
    .local v1, listener:Lit/unina/androidripper/model/AbstractorListener;
    invoke-interface {v1, v2}, Lit/unina/androidripper/model/AbstractorListener;->onNewInput(Lcom/nofatclips/androidtesting/model/UserInput;)V

    goto :goto_0

    .line 368
    .end local v1           #listener:Lit/unina/androidripper/model/AbstractorListener;
    :cond_0
    return-object v2
.end method

.method public createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;
    .locals 8
    .parameter "start"
    .parameter
    .parameter "event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/ActivityState;",
            "Ljava/util/Collection",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserInput;",
            ">;",
            "Lcom/nofatclips/androidtesting/model/UserEvent;",
            ")",
            "Lcom/nofatclips/androidtesting/model/Transition;"
        }
    .end annotation

    .prologue
    .line 394
    .local p2, inputs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-static {v4}, Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;->createTransition(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseTransition;

    move-result-object v3

    .line 396
    .local v3, t:Lcom/nofatclips/androidtesting/model/Transition;
    :try_start_0
    invoke-static {p1}, Lcom/nofatclips/androidtesting/guitree/StartActivity;->createActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lcom/nofatclips/androidtesting/guitree/StartActivity;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->setStartActivity(Lcom/nofatclips/androidtesting/model/Transition;Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 397
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nofatclips/androidtesting/model/UserInput;

    .line 398
    .local v2, inPut:Lcom/nofatclips/androidtesting/model/UserInput;
    invoke-interface {v3, v2}, Lcom/nofatclips/androidtesting/model/Transition;->addInput(Lcom/nofatclips/androidtesting/model/UserInput;)V
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #inPut:Lcom/nofatclips/androidtesting/model/UserInput;
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Lorg/w3c/dom/DOMException;
    const-string v5, "androidripper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Abstractor->createStep(activity): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v4, v0, Lorg/w3c/dom/DOMException;->code:S

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    const-string v4, "HIERARCHY_REQUEST_ERR"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v0           #e:Lorg/w3c/dom/DOMException;
    :goto_2
    return-object v3

    .line 400
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-interface {v3, p3}, Lcom/nofatclips/androidtesting/model/Transition;->setEvent(Lcom/nofatclips/androidtesting/model/UserEvent;)V
    :try_end_1
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 403
    .end local v1           #i$:Ljava/util/Iterator;
    .restart local v0       #e:Lorg/w3c/dom/DOMException;
    :cond_1
    iget-short v4, v0, Lorg/w3c/dom/DOMException;->code:S

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public createTrace(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/Transition;)Lcom/nofatclips/androidtesting/model/Trace;
    .locals 2
    .parameter "head"
    .parameter "tail"

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 374
    check-cast p1, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;

    .end local p1
    invoke-virtual {p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->clone()Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;

    move-result-object v0

    .line 378
    .local v0, t:Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;
    :goto_0
    invoke-virtual {v0, p2}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->addTransition(Lcom/nofatclips/androidtesting/model/Transition;)V

    .line 379
    return-object v0

    .line 376
    .end local v0           #t:Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;
    .restart local p1
    :cond_0
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;

    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getTheSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;-><init>(Lcom/nofatclips/androidtesting/guitree/GuiTree;)V

    .restart local v0       #t:Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;
    goto :goto_0
.end method

.method public createWidget(Landroid/view/View;)Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;
    .locals 8
    .parameter "v"

    .prologue
    .line 101
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getTheSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;

    move-result-object v5

    invoke-static {v5}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->createWidget(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;

    move-result-object v4

    .line 102
    .local v4, w:Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, id:Ljava/lang/String;
    invoke-static {p1}, Lit/unina/androidripper/automation/AbstractorUtilities;->detectName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 105
    .local v3, type:I
    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    move-object v5, p1

    .line 106
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    .line 107
    if-eqz v3, :cond_0

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setTextType(Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-static {p1}, Lit/unina/androidripper/automation/AbstractorUtilities;->getType(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setIdNameType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getUniqueWidgetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setUniqueId(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getTypeDetector()Lit/unina/androidripper/model/TypeDetector;

    move-result-object v5

    invoke-interface {v5, p1}, Lit/unina/androidripper/model/TypeDetector;->getSimpleType(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setSimpleType(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "android.view.View"

    const-string v6, "mOnFocusChangeListener"

    invoke-static {p1, v5, v6}, Lit/unina/androidripper/helpers/ReflectionHelper;->checkIfFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    const-string v5, "focusableEditText"

    invoke-virtual {v4, v5}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setSimpleType(Ljava/lang/String;)V

    .line 126
    :cond_1
    invoke-static {p1, v4}, Lit/unina/androidripper/automation/AbstractorUtilities;->setCount(Landroid/view/View;Lcom/nofatclips/androidtesting/model/WidgetState;)V

    .line 127
    invoke-static {p1, v4}, Lit/unina/androidripper/automation/AbstractorUtilities;->setValue(Landroid/view/View;Lcom/nofatclips/androidtesting/model/WidgetState;)V

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "true"

    :goto_0
    invoke-virtual {v4, v5}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAvailable(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "true"

    :goto_1
    invoke-virtual {v4, v5}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setClickable(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "true"

    :goto_2
    invoke-virtual {v4, v5}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setLongClickable(Ljava/lang/String;)V

    .line 134
    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Lit/unina/androidripper/automation/AbstractorUtilities;->reflectTextualIDbyNumericalID(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, txtId:Ljava/lang/String;
    const-string v5, "androidripper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TextualID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {v4, v2}, Lcom/nofatclips/dictionary/ContentTypeDetector;->detect(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setContentType(Ljava/lang/String;)V

    .line 139
    const-string v5, "androidripper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContentType detected : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v2           #txtId:Ljava/lang/String;
    :cond_2
    return-object v4

    .line 128
    :cond_3
    const-string v5, "false"

    goto :goto_0

    .line 129
    :cond_4
    const-string v5, "false"

    goto :goto_1

    .line 130
    :cond_5
    const-string v5, "false"

    goto :goto_2
.end method

.method public getBaseActivity()Lcom/nofatclips/androidtesting/model/ActivityState;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->baseActivity:Lcom/nofatclips/androidtesting/guitree/StartActivity;

    return-object v0
.end method

.method public getListenerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    const-string v0, "GuiTreeAbstractor"

    return-object v0
.end method

.method public getTheSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->theSession:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    return-object v0
.end method

.method public getTypeDetector()Lit/unina/androidripper/model/TypeDetector;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->detector:Lit/unina/androidripper/model/TypeDetector;

    return-object v0
.end method

.method public getUniqueActivityId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 419
    iget v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->activityId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->activityId:I

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->activityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueEventId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 413
    iget v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->eventId:I

    .line 414
    .local v0, ret:I
    iget v1, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->eventId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->eventId:I

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUniqueInputId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 424
    iget v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->inputId:I

    .line 425
    .local v0, ret:I
    iget v1, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->inputId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->inputId:I

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUniqueWidgetId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 430
    iget v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->widgetId:I

    .line 431
    .local v0, ret:I
    iget v1, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->widgetId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->widgetId:I

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public importState(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/ActivityState;
    .locals 1
    .parameter "fromXml"

    .prologue
    .line 390
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getTheSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->importState(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;

    move-result-object v0

    return-object v0
.end method

.method public importTask(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/Trace;
    .locals 3
    .parameter "fromXml"

    .prologue
    .line 383
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;

    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getTheSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;-><init>(Lcom/nofatclips/androidtesting/guitree/GuiTree;)V

    .line 384
    .local v0, imported:Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->getTheSession()Lcom/nofatclips/androidtesting/guitree/GuiTree;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/w3c/dom/Document;->adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 385
    .local v1, task:Lorg/w3c/dom/Element;
    invoke-virtual {v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseTrace;->setElement(Lorg/w3c/dom/Element;)V

    .line 386
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lit/unina/androidripper/model/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->filters:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public onLoadingState(Lit/unina/androidripper/model/SessionParams;)V
    .locals 3
    .parameter "sessionParams"

    .prologue
    .line 445
    const-string v0, "eventId"

    invoke-virtual {p1, v0}, Lit/unina/androidripper/model/SessionParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->eventId:I

    .line 446
    const-string v0, "inputId"

    invoke-virtual {p1, v0}, Lit/unina/androidripper/model/SessionParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->inputId:I

    .line 447
    const-string v0, "activityId"

    invoke-virtual {p1, v0}, Lit/unina/androidripper/model/SessionParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->activityId:I

    .line 448
    const-string v0, "widgetId"

    invoke-virtual {p1, v0}, Lit/unina/androidripper/model/SessionParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->widgetId:I

    .line 449
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored abstractor counters to: event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->eventId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - input = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->inputId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->activityId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-void
.end method

.method public onSavingState()Lit/unina/androidripper/model/SessionParams;
    .locals 3

    .prologue
    .line 436
    new-instance v0, Lit/unina/androidripper/model/SessionParams;

    invoke-direct {v0}, Lit/unina/androidripper/model/SessionParams;-><init>()V

    .line 437
    .local v0, state:Lit/unina/androidripper/model/SessionParams;
    const-string v1, "eventId"

    iget v2, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->eventId:I

    invoke-virtual {v0, v1, v2}, Lit/unina/androidripper/model/SessionParams;->store(Ljava/lang/String;I)V

    .line 438
    const-string v1, "inputId"

    iget v2, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->inputId:I

    invoke-virtual {v0, v1, v2}, Lit/unina/androidripper/model/SessionParams;->store(Ljava/lang/String;I)V

    .line 439
    const-string v1, "activityId"

    iget v2, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->activityId:I

    invoke-virtual {v0, v1, v2}, Lit/unina/androidripper/model/SessionParams;->store(Ljava/lang/String;I)V

    .line 440
    const-string v1, "widgetId"

    iget v2, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->widgetId:I

    invoke-virtual {v0, v1, v2}, Lit/unina/androidripper/model/SessionParams;->store(Ljava/lang/String;I)V

    .line 441
    return-object v0
.end method

.method public registerListener(Lit/unina/androidripper/model/AbstractorListener;)V
    .locals 1
    .parameter "theListener"

    .prologue
    .line 409
    iget-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->theListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    return-void
.end method

.method public setBaseActivity(Lit/unina/androidripper/model/ActivityDescription;)V
    .locals 1
    .parameter "desc"

    .prologue
    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->createActivity(Lit/unina/androidripper/model/ActivityDescription;Z)Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/guitree/StartActivity;

    iput-object v0, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->baseActivity:Lcom/nofatclips/androidtesting/guitree/StartActivity;

    .line 306
    return-void
.end method

.method public setFinalActivity(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 1
    .parameter "theTask"
    .parameter "theActivity"

    .prologue
    .line 317
    sget-boolean v0, Lit/unina/androidripper/Resources;->ACTIVITY_DESCRIPTION_IN_SESSION:Z

    if-eqz v0, :cond_0

    .end local p2
    :goto_0
    invoke-interface {p1, p2}, Lcom/nofatclips/androidtesting/model/Trace;->setFinalActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 318
    return-void

    .line 317
    .restart local p2
    :cond_0
    invoke-direct {p0, p2}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->stubActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;

    move-result-object p2

    goto :goto_0
.end method

.method public setStartActivity(Lcom/nofatclips/androidtesting/model/Transition;Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 1
    .parameter "theStep"
    .parameter "theActivity"

    .prologue
    .line 313
    sget-boolean v0, Lit/unina/androidripper/Resources;->ACTIVITY_DESCRIPTION_IN_SESSION:Z

    if-eqz v0, :cond_0

    .end local p2
    :goto_0
    invoke-interface {p1, p2}, Lcom/nofatclips/androidtesting/model/Transition;->setStartActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 314
    return-void

    .line 313
    .restart local p2
    :cond_0
    invoke-direct {p0, p2}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->stubActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lcom/nofatclips/androidtesting/guitree/TestCaseActivity;

    move-result-object p2

    goto :goto_0
.end method

.method public setTheSession(Lcom/nofatclips/androidtesting/guitree/GuiTree;)V
    .locals 0
    .parameter "theSession"

    .prologue
    .line 63
    iput-object p1, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->theSession:Lcom/nofatclips/androidtesting/guitree/GuiTree;

    .line 64
    return-void
.end method

.method public setTypeDetector(Lit/unina/androidripper/model/TypeDetector;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 71
    iput-object p1, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->detector:Lit/unina/androidripper/model/TypeDetector;

    .line 72
    return-void
.end method

.method public updateDescription(Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/ActivityDescription;)Z
    .locals 1
    .parameter "newActivity"
    .parameter "desc"

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->updateDescription(Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/ActivityDescription;Z)Z

    move-result v0

    return v0
.end method

.method public updateDescription(Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/ActivityDescription;Z)Z
    .locals 11
    .parameter "newActivity"
    .parameter "desc"
    .parameter "detectDuplicates"

    .prologue
    .line 148
    const/4 v2, 0x0

    .line 151
    .local v2, hasDescription:Z
    sget-boolean v9, Lit/unina/androidripper/planning/Resources;->REFLECT_ACTIVITY_LISTENERS:Z

    if-eqz v9, :cond_0

    invoke-interface {p2}, Lit/unina/androidripper/model/ActivityDescription;->hasMenu()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 153
    const-string v9, "openMenu"

    invoke-direct {p0, p1, v9}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addActivitySupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;)V

    .line 159
    :cond_0
    sget-boolean v9, Lit/unina/androidripper/planning/Resources;->REFLECT_ACTIVITY_LISTENERS:Z

    if-eqz v9, :cond_1

    invoke-interface {p2}, Lit/unina/androidripper/model/ActivityDescription;->handlesKeyPress()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 161
    const-string v9, "pressKey"

    invoke-direct {p0, p1, v9}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addActivitySupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;)V

    .line 166
    const-string v9, "back"

    invoke-direct {p0, p1, v9}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addActivitySupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;)V

    .line 169
    :cond_1
    sget-boolean v9, Lit/unina/androidripper/planning/Resources;->REFLECT_ACTIVITY_LISTENERS:Z

    if-eqz v9, :cond_2

    invoke-interface {p2}, Lit/unina/androidripper/model/ActivityDescription;->handlesLongKeyPress()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 172
    const-string v9, "_longKeyPress"

    invoke-direct {p0, p1, v9}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addActivitySupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;)V

    .line 175
    :cond_2
    invoke-interface {p2}, Lit/unina/androidripper/model/ActivityDescription;->isTabActivity()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 178
    const-string v9, "androidripper"

    const-string v10, "Activity is TabActivity"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_3
    invoke-interface {p2}, Lit/unina/androidripper/model/ActivityDescription;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 183
    .local v7, v:Landroid/view/View;
    const/4 v2, 0x1

    .line 184
    invoke-virtual {v7}, Landroid/view/View;->isShown()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 185
    invoke-virtual {p0, v7}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->createWidget(Landroid/view/View;)Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;

    move-result-object v8

    .line 186
    .local v8, w:Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;
    invoke-interface {p2, v7}, Lit/unina/androidripper/model/ActivityDescription;->getWidgetIndex(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setIndex(I)V

    .line 187
    if-eqz p3, :cond_5

    invoke-interface {p1, v8}, Lcom/nofatclips/androidtesting/model/ActivityState;->hasWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 188
    :cond_5
    invoke-interface {p1, v8}, Lcom/nofatclips/androidtesting/model/ActivityState;->addWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)V

    .line 191
    sget-boolean v9, Lit/unina/androidripper/planning/Resources;->REFLECT_WIDGETS:Z

    if-eqz v9, :cond_6

    .line 192
    invoke-direct {p0, p1, v7, v8}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->reflectWidget(Lcom/nofatclips/androidtesting/model/ActivityState;Landroid/view/View;Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;)V

    .line 195
    :cond_6
    iget-object v9, p0, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->filters:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/androidripper/model/Filter;

    .line 196
    .local v1, f:Lit/unina/androidripper/model/Filter;
    invoke-interface {v1, v7, v8}, Lit/unina/androidripper/model/Filter;->loadItem(Landroid/view/View;Lcom/nofatclips/androidtesting/model/WidgetState;)V

    goto :goto_0

    .line 201
    .end local v1           #f:Lit/unina/androidripper/model/Filter;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #v:Landroid/view/View;
    .end local v8           #w:Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;
    :cond_7
    sget-boolean v9, Lit/unina/androidripper/planning/Resources;->USE_SENSORS:Z

    if-eqz v9, :cond_8

    invoke-interface {p2}, Lit/unina/androidripper/model/ActivityDescription;->usesSensorsManager()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 203
    sget-object v0, Lit/unina/androidripper/planning/Resources;->SENSOR_TYPES:[Ljava/lang/Integer;

    .local v0, arr$:[Ljava/lang/Integer;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_8

    aget-object v6, v0, v3

    .line 205
    .local v6, s:Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 203
    :goto_2
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 208
    :pswitch_1
    const-string v9, "accelerometerSensorEvent"

    invoke-direct {p0, p1, v9}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addActivitySupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;)V

    goto :goto_2

    .line 212
    :pswitch_2
    const-string v9, "orientationSensorEvent"

    invoke-direct {p0, p1, v9}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addActivitySupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;)V

    goto :goto_2

    .line 216
    :pswitch_3
    const-string v9, "magneticFieldSensorEvent"

    invoke-direct {p0, p1, v9}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addActivitySupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;)V

    goto :goto_2

    .line 220
    :pswitch_4
    const-string v9, "temperatureSensorEvent"

    invoke-direct {p0, p1, v9}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addActivitySupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;)V

    goto :goto_2

    .line 226
    .end local v0           #arr$:[Ljava/lang/Integer;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #s:Ljava/lang/Integer;
    :cond_8
    sget-boolean v9, Lit/unina/androidripper/planning/Resources;->USE_GPS:Z

    if-eqz v9, :cond_9

    invoke-interface {p2}, Lit/unina/androidripper/model/ActivityDescription;->usesLocationManager()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 228
    const-string v9, "gpsLocationChangeEvent"

    invoke-direct {p0, p1, v9}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addActivitySupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;)V

    .line 229
    const-string v9, "gpsProviderDisableEvent"

    invoke-direct {p0, p1, v9}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addActivitySupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;)V

    .line 232
    :cond_9
    sget-boolean v9, Lit/unina/androidripper/planning/Resources;->SIMULATE_INCOMING_CALL:Z

    if-eqz v9, :cond_a

    .line 234
    const-string v9, "incomingCallEvent"

    invoke-direct {p0, p1, v9}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addActivitySupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;)V

    .line 237
    :cond_a
    sget-boolean v9, Lit/unina/androidripper/planning/Resources;->SIMULATE_INCOMING_SMS:Z

    if-eqz v9, :cond_b

    .line 239
    const-string v9, "incomingSMSEvent"

    invoke-direct {p0, p1, v9}, Lit/unina/androidripper/guitree/GuiTreeAbstractor;->addActivitySupportedEvent(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/lang/String;)V

    .line 243
    :cond_b
    return v2

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
