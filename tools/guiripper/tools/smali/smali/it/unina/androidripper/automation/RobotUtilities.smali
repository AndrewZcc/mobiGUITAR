.class public Lit/unina/androidripper/automation/RobotUtilities;
.super Ljava/lang/Object;
.source "RobotUtilities.java"


# static fields
.field private static instrum:Landroid/app/Instrumentation;

.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lit/unina/androidripper/model/EventFiredListener;",
            ">;"
        }
    .end annotation
.end field

.field private static solo:Lcom/jayway/android/robotium/solo/Solo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lit/unina/androidripper/automation/RobotUtilities;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ActionBarHome()V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Solo;->clickOnActionBarHomeButton()V

    .line 191
    return-void
.end method

.method public static addListener(Lit/unina/androidripper/model/EventFiredListener;)V
    .locals 1
    .parameter "cil"

    .prologue
    .line 37
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method protected static assertNotNull(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 299
    invoke-static {p0}, Landroid/test/ActivityInstrumentationTestCase2;->assertNotNull(Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method protected static assertNotNull(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "v"
    .parameter "errorMessage"

    .prologue
    .line 303
    invoke-static {p1, p0}, Landroid/test/ActivityInstrumentationTestCase2;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public static changeOrientation()V
    .locals 5

    .prologue
    .line 198
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 199
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 200
    .local v0, angle:I
    if-eqz v0, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 201
    .local v2, newAngle:I
    :goto_0
    sget-object v3, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v3, v2}, Lcom/jayway/android/robotium/solo/Solo;->setActivityOrientation(I)V

    .line 202
    return-void

    .line 200
    .end local v2           #newAngle:I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static click(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 47
    const-string v2, "Cannot click: the widget does not exist"

    invoke-static {p0, v2}, Lit/unina/androidripper/automation/RobotUtilities;->assertNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 48
    sget-object v2, Lit/unina/androidripper/automation/RobotUtilities;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/androidripper/model/EventFiredListener;

    .line 49
    .local v1, l:Lit/unina/androidripper/model/EventFiredListener;
    invoke-interface {v1, p0}, Lit/unina/androidripper/model/EventFiredListener;->onClickEventFired(Landroid/view/View;)V

    goto :goto_0

    .line 51
    .end local v1           #l:Lit/unina/androidripper/model/EventFiredListener;
    :cond_0
    sget-object v2, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v2, p0}, Lcom/jayway/android/robotium/solo/Solo;->clickOnView(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public static clickOnText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 67
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v0, p0}, Lcom/jayway/android/robotium/solo/Solo;->clickOnText(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static createRobotium(Landroid/test/ActivityInstrumentationTestCase2;)Lcom/jayway/android/robotium/solo/Solo;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/test/ActivityInstrumentationTestCase2",
            "<*>;)",
            "Lcom/jayway/android/robotium/solo/Solo;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, test:Landroid/test/ActivityInstrumentationTestCase2;,"Landroid/test/ActivityInstrumentationTestCase2<*>;"
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    sput-object v0, Lit/unina/androidripper/automation/RobotUtilities;->instrum:Landroid/app/Instrumentation;

    .line 32
    new-instance v0, Lcom/jayway/android/robotium/solo/Solo;

    sget-object v1, Lit/unina/androidripper/automation/RobotUtilities;->instrum:Landroid/app/Instrumentation;

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jayway/android/robotium/solo/Solo;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;)V

    sput-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    .line 33
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    return-object v0
.end method

.method public static createRobotiumWithInstrumentationTestCase(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)Lcom/jayway/android/robotium/solo/Solo;
    .locals 2
    .parameter "test"
    .parameter "activity"

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    sput-object v0, Lit/unina/androidripper/automation/RobotUtilities;->instrum:Landroid/app/Instrumentation;

    .line 308
    new-instance v0, Lcom/jayway/android/robotium/solo/Solo;

    sget-object v1, Lit/unina/androidripper/automation/RobotUtilities;->instrum:Landroid/app/Instrumentation;

    invoke-direct {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Solo;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;)V

    sput-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    .line 309
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    return-object v0
.end method

.method public static drag(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 55
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    check-cast p0, Landroid/widget/SlidingDrawer;

    .end local p0
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jayway/android/robotium/solo/Solo;->setSlidingDrawer(Landroid/widget/SlidingDrawer;I)V

    .line 56
    return-void
.end method

.method public static getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->instrum:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public static goBack()V
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Solo;->goBack()V

    .line 181
    return-void
.end method

.method public static home()V
    .locals 4

    .prologue
    .line 239
    sget-object v2, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    const-class v3, Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/Solo;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    .local v0, viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 241
    new-instance v2, Lit/unina/androidripper/automation/RobotUtilities$2;

    invoke-direct {v2, v0}, Lit/unina/androidripper/automation/RobotUtilities$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v2}, Lit/unina/androidripper/automation/RobotUtilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 249
    :cond_0
    sget-object v2, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    const-class v3, Landroid/widget/ScrollView;

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/Solo;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 250
    .local v1, viewScroll:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ScrollView;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 251
    new-instance v2, Lit/unina/androidripper/automation/RobotUtilities$3;

    invoke-direct {v2, v1}, Lit/unina/androidripper/automation/RobotUtilities$3;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v2}, Lit/unina/androidripper/automation/RobotUtilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 258
    :cond_1
    return-void
.end method

.method public static longClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 59
    const-string v2, "Cannot longClick: the widget does not exist"

    invoke-static {p0, v2}, Lit/unina/androidripper/automation/RobotUtilities;->assertNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 60
    sget-object v2, Lit/unina/androidripper/automation/RobotUtilities;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/androidripper/model/EventFiredListener;

    .line 61
    .local v1, l:Lit/unina/androidripper/model/EventFiredListener;
    invoke-interface {v1, p0}, Lit/unina/androidripper/model/EventFiredListener;->onLongClickEventFired(Landroid/view/View;)V

    goto :goto_0

    .line 63
    .end local v1           #l:Lit/unina/androidripper/model/EventFiredListener;
    :cond_0
    sget-object v2, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v2, p0}, Lcom/jayway/android/robotium/solo/Solo;->clickLongOnView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public static openMenu()V
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Solo;->sendKey(I)V

    .line 185
    return-void
.end method

.method public static pressKey(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 171
    sget-object v2, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v2, p0}, Lcom/jayway/android/robotium/solo/Solo;->sendKey(I)V

    .line 172
    sget-object v2, Lit/unina/androidripper/automation/RobotUtilities;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/androidripper/model/EventFiredListener;

    .line 173
    .local v1, l:Lit/unina/androidripper/model/EventFiredListener;
    invoke-interface {v1, p0}, Lit/unina/androidripper/model/EventFiredListener;->onKeyEventFired(I)V

    goto :goto_0

    .line 175
    .end local v1           #l:Lit/unina/androidripper/model/EventFiredListener;
    :cond_0
    return-void
.end method

.method public static pressKey(Ljava/lang/String;)V
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lit/unina/androidripper/automation/RobotUtilities;->pressKey(I)V

    .line 168
    return-void
.end method

.method protected static requestFocus(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 271
    new-instance v0, Lit/unina/androidripper/automation/RobotUtilities$4;

    invoke-direct {v0, p0}, Lit/unina/androidripper/automation/RobotUtilities$4;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lit/unina/androidripper/automation/RobotUtilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 276
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->sync()V

    .line 277
    return-void
.end method

.method protected static requestView(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "force"

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->home()V

    .line 264
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Solo;->sendKey(I)V

    .line 265
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/jayway/android/robotium/solo/Solo;->waitForView(Landroid/view/View;IZ)Z

    .line 267
    :cond_0
    invoke-static {p0}, Lit/unina/androidripper/automation/RobotUtilities;->requestFocus(Landroid/view/View;)V

    .line 268
    return-void
.end method

.method protected static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 286
    invoke-static {}, Lit/unina/androidripper/automation/ExtractorUtilities;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method

.method public static scrollDown()V
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Solo;->scrollDown()Z

    .line 195
    return-void
.end method

.method public static searchText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 2
    .parameter "v"
    .parameter "value"

    .prologue
    .line 146
    invoke-static {p0, p1}, Lit/unina/androidripper/automation/RobotUtilities;->writeText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Solo;->sendKey(I)V

    .line 148
    return-void
.end method

.method public static selectListItem(Landroid/widget/ListView;IZ)V
    .locals 9
    .parameter "l"
    .parameter "num"
    .parameter "longClick"

    .prologue
    const/16 v8, 0x13

    const/16 v7, 0x14

    .line 82
    if-nez p0, :cond_0

    .line 83
    sget-object v4, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    const-class v5, Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/Solo;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    .local v0, lists:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ListView;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 85
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ListView;

    .line 89
    .end local v0           #lists:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ListView;>;"
    .restart local p0
    :cond_0
    const-string v4, "Cannon select list item: the list does not exist"

    invoke-static {p0, v4}, Lit/unina/androidripper/automation/RobotUtilities;->assertNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 90
    invoke-static {p0}, Lit/unina/androidripper/automation/RobotUtilities;->requestFocus(Landroid/view/View;)V

    .line 91
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Swapping to listview item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v4, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v4, v7}, Lcom/jayway/android/robotium/solo/Solo;->sendKey(I)V

    .line 94
    move-object v2, p0

    .line 95
    .local v2, theList:Landroid/widget/ListView;
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 96
    .local v1, n:I
    new-instance v4, Lit/unina/androidripper/automation/RobotUtilities$1;

    invoke-direct {v4, v2, v1}, Lit/unina/androidripper/automation/RobotUtilities$1;-><init>(Landroid/widget/ListView;I)V

    invoke-static {v4}, Lit/unina/androidripper/automation/RobotUtilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 101
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->sync()V

    .line 103
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_1

    .line 104
    sget-object v4, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v4, v7}, Lcom/jayway/android/robotium/solo/Solo;->sendKey(I)V

    .line 105
    sget-object v4, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v4, v8}, Lcom/jayway/android/robotium/solo/Solo;->sendKey(I)V

    .line 110
    :goto_0
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->sync()V

    .line 112
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    .line 113
    .local v3, v:Landroid/view/View;
    if-eqz p2, :cond_2

    .line 114
    invoke-static {v3}, Lit/unina/androidripper/automation/RobotUtilities;->longClick(Landroid/view/View;)V

    .line 118
    :goto_1
    return-void

    .line 107
    .end local v3           #v:Landroid/view/View;
    :cond_1
    sget-object v4, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v4, v8}, Lcom/jayway/android/robotium/solo/Solo;->sendKey(I)V

    .line 108
    sget-object v4, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v4, v7}, Lcom/jayway/android/robotium/solo/Solo;->sendKey(I)V

    goto :goto_0

    .line 116
    .restart local v3       #v:Landroid/view/View;
    :cond_2
    invoke-static {v3}, Lit/unina/androidripper/automation/RobotUtilities;->click(Landroid/view/View;)V

    goto :goto_1
.end method

.method public static selectListItem(Landroid/widget/ListView;Ljava/lang/String;)V
    .locals 1
    .parameter "l"
    .parameter "item"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lit/unina/androidripper/automation/RobotUtilities;->selectListItem(Landroid/widget/ListView;Ljava/lang/String;Z)V

    .line 74
    return-void
.end method

.method public static selectListItem(Landroid/widget/ListView;Ljava/lang/String;Z)V
    .locals 1
    .parameter "l"
    .parameter "item"
    .parameter "longClick"

    .prologue
    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0, p2}, Lit/unina/androidripper/automation/RobotUtilities;->selectListItem(Landroid/widget/ListView;IZ)V

    .line 78
    return-void
.end method

.method public static selectRadioItem(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "r"
    .parameter "num"

    .prologue
    .line 157
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "Cannot press radio group item: the index must be a positive number"

    invoke-static {v0, v1}, Lit/unina/androidripper/automation/RobotUtilities;->assertNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 158
    :cond_0
    const-string v0, "Cannon press radio group item: the radio group does not exist"

    invoke-static {p0, v0}, Lit/unina/androidripper/automation/RobotUtilities;->assertNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 159
    const-string v0, "androidripper"

    const-string v1, "Selecting from the Radio Group view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lit/unina/androidripper/automation/RobotUtilities;->click(Landroid/view/View;)V

    .line 161
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->sync()V

    .line 162
    return-void
.end method

.method public static selectRadioItem(Landroid/widget/RadioGroup;Ljava/lang/String;)V
    .locals 1
    .parameter "r"
    .parameter "value"

    .prologue
    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lit/unina/androidripper/automation/RobotUtilities;->selectRadioItem(Landroid/widget/RadioGroup;I)V

    .line 154
    return-void
.end method

.method public static selectSpinnerItem(Landroid/widget/Spinner;I)V
    .locals 3
    .parameter "s"
    .parameter "num"

    .prologue
    const/4 v2, 0x0

    .line 127
    const-string v0, "Cannon press spinner item: the spinner does not exist"

    invoke-static {p0, v0}, Lit/unina/androidripper/automation/RobotUtilities;->assertNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 128
    const-string v0, "androidripper"

    const-string v1, "Clicking the spinner view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {p0}, Lit/unina/androidripper/automation/RobotUtilities;->click(Landroid/view/View;)V

    .line 130
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->sync()V

    .line 131
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    const-class v1, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Solo;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v0, p1, v2}, Lit/unina/androidripper/automation/RobotUtilities;->selectListItem(Landroid/widget/ListView;IZ)V

    .line 132
    return-void
.end method

.method public static selectSpinnerItem(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 1
    .parameter "l"
    .parameter "item"

    .prologue
    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lit/unina/androidripper/automation/RobotUtilities;->selectSpinnerItem(Landroid/widget/Spinner;I)V

    .line 124
    return-void
.end method

.method public static setProgressBar(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "v"
    .parameter "value"

    .prologue
    .line 207
    check-cast p0, Landroid/widget/ProgressBar;

    .end local p0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lit/unina/androidripper/automation/RobotUtilities;->setProgressBar(Landroid/widget/ProgressBar;I)V

    .line 208
    return-void
.end method

.method public static setProgressBar(Landroid/widget/ProgressBar;I)V
    .locals 1
    .parameter "v"
    .parameter "value"

    .prologue
    .line 211
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v0, p0, p1}, Lcom/jayway/android/robotium/solo/Solo;->setProgressBar(Landroid/widget/ProgressBar;I)V

    .line 212
    return-void
.end method

.method public static swapTab(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "v"
    .parameter "tab"

    .prologue
    .line 217
    check-cast p0, Landroid/widget/TabHost;

    .end local p0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lit/unina/androidripper/automation/RobotUtilities;->swapTab(Landroid/widget/TabHost;I)V

    .line 218
    return-void
.end method

.method public static swapTab(Landroid/widget/TabHost;I)V
    .locals 5
    .parameter "t"
    .parameter "num"

    .prologue
    const/4 v3, 0x1

    .line 225
    const-string v2, "Cannon swap tab: the tab host does not exist"

    invoke-static {p0, v2}, Lit/unina/androidripper/automation/RobotUtilities;->assertNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    .line 227
    .local v0, count:I
    const-string v4, "Cannot swap tab: tab index out of bound"

    if-gt p1, v0, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v4, v2}, Landroid/test/ActivityInstrumentationTestCase2;->assertTrue(Ljava/lang/String;Z)V

    .line 228
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 229
    .local v1, n:I
    const-string v2, "androidripper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Swapping to tab "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lit/unina/androidripper/automation/RobotUtilities;->click(Landroid/view/View;)V

    .line 231
    return-void

    .line 227
    .end local v1           #n:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static swapTab(Landroid/widget/TabHost;Ljava/lang/String;)V
    .locals 1
    .parameter "t"
    .parameter "tab"

    .prologue
    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lit/unina/androidripper/automation/RobotUtilities;->swapTab(Landroid/widget/TabHost;I)V

    .line 222
    return-void
.end method

.method public static sync()V
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 291
    return-void
.end method

.method public static typeText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1
    .parameter "v"
    .parameter "value"

    .prologue
    .line 137
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v0, p0, p1}, Lcom/jayway/android/robotium/solo/Solo;->enterText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static wait(I)V
    .locals 4
    .parameter "milli"

    .prologue
    .line 294
    const-string v1, "androidripper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v3, p0, 0x3e8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " sec."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v0, Lit/unina/androidripper/automation/RobotUtilities;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v0, p0}, Lcom/jayway/android/robotium/solo/Solo;->sleep(I)V

    .line 296
    return-void

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " msec."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static writeText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1
    .parameter "v"
    .parameter "value"

    .prologue
    .line 141
    const-string v0, ""

    invoke-static {p0, v0}, Lit/unina/androidripper/automation/RobotUtilities;->typeText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 142
    invoke-static {p0, p1}, Lit/unina/androidripper/automation/RobotUtilities;->typeText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 143
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lit/unina/androidripper/automation/ExtractorUtilities;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
