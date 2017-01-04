.class public Lit/unina/androidripper/automation/Automation;
.super Ljava/lang/Object;
.source "Automation.java"

# interfaces
.implements Lit/unina/androidripper/model/Robot;
.implements Lit/unina/androidripper/model/Extractor;
.implements Lit/unina/androidripper/model/TaskProcessor;
.implements Lit/unina/androidripper/model/ImageCaptor;
.implements Lit/unina/androidripper/model/EventFiredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/unina/androidripper/automation/Automation$TrivialExtractor;
    }
.end annotation


# static fields
.field public static final SEPARATOR:Ljava/lang/String; = ".-.-."


# instance fields
.field activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

.field private allViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private currentEvent:Lcom/nofatclips/androidtesting/model/UserEvent;

.field private extractor:Lit/unina/androidripper/model/Extractor;

.field private imageCaptor:Lit/unina/androidripper/model/ImageCaptor;

.field public locationManager:Landroid/location/LocationManager;

.field public packageManagerHelper:Lit/unina/androidripper/helpers/PackageManagerHelper;

.field private precrawlNeeded:Z

.field private restarter:Lit/unina/androidripper/model/Restarter;

.field private solo:Lcom/jayway/android/robotium/solo/Solo;

.field private tabs:Landroid/widget/TabHost;

.field private theRobot:Lit/unina/androidripper/model/Robot;

.field private theViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lit/unina/androidripper/automation/Automation;->theViews:Landroid/util/SparseArray;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lit/unina/androidripper/automation/Automation;->allViews:Ljava/util/ArrayList;

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lit/unina/androidripper/automation/Automation;->precrawlNeeded:Z

    .line 615
    new-instance v1, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    invoke-direct {v1}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;-><init>()V

    iput-object v1, p0, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    .line 70
    new-instance v0, Lit/unina/androidripper/automation/Automation$TrivialExtractor;

    invoke-direct {v0, p0}, Lit/unina/androidripper/automation/Automation$TrivialExtractor;-><init>(Lit/unina/androidripper/automation/Automation;)V

    .line 71
    .local v0, te:Lit/unina/androidripper/automation/Automation$TrivialExtractor;
    invoke-virtual {p0, v0}, Lit/unina/androidripper/automation/Automation;->setExtractor(Lit/unina/androidripper/model/Extractor;)V

    .line 72
    iput-object v0, p0, Lit/unina/androidripper/automation/Automation;->imageCaptor:Lit/unina/androidripper/model/ImageCaptor;

    .line 73
    invoke-virtual {p0, p0}, Lit/unina/androidripper/automation/Automation;->setRobot(Lit/unina/androidripper/model/Robot;)V

    .line 74
    invoke-static {p0}, Lit/unina/androidripper/automation/RobotUtilities;->addListener(Lit/unina/androidripper/model/EventFiredListener;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Extractor;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/automation/Automation;->theViews:Landroid/util/SparseArray;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/automation/Automation;->allViews:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/unina/androidripper/automation/Automation;->precrawlNeeded:Z

    .line 615
    new-instance v0, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    invoke-direct {v0}, Lit/unina/androidripper/automation/utils/ActivityReflectionCache;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/automation/Automation;->activityCache:Lit/unina/androidripper/automation/utils/ActivityReflectionCache;

    .line 78
    invoke-virtual {p0, p1}, Lit/unina/androidripper/automation/Automation;->setExtractor(Lit/unina/androidripper/model/Extractor;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lit/unina/androidripper/automation/Automation;)Lcom/jayway/android/robotium/solo/Solo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->solo:Lcom/jayway/android/robotium/solo/Solo;

    return-object v0
.end method

.method private fireEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "widgetId"
    .parameter "widgetName"
    .parameter "widgetType"
    .parameter "eventType"
    .parameter "value"

    .prologue
    .line 174
    invoke-virtual {p0, p1, p3, p2}, Lit/unina/androidripper/automation/Automation;->getWidget(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lit/unina/androidripper/automation/Automation;->getWidget(I)Landroid/view/View;

    move-result-object v0

    .line 178
    :cond_0
    if-nez v0, :cond_1

    .line 179
    invoke-static {p1}, Lit/unina/androidripper/automation/ExtractorUtilities;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 181
    :cond_1
    invoke-direct {p0, v0, p4, p5}, Lit/unina/androidripper/automation/Automation;->fireEventOnView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method private fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "widgetName"
    .parameter "widgetType"
    .parameter "eventType"
    .parameter "value"

    .prologue
    .line 185
    const/4 v2, 0x0

    .line 186
    .local v2, v:Landroid/view/View;
    const-string v4, "button"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 187
    iget-object v4, p0, Lit/unina/androidripper/automation/Automation;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v4, p1}, Lcom/jayway/android/robotium/solo/Solo;->getButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 191
    :cond_0
    :goto_0
    if-nez v2, :cond_3

    .line 192
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->getAllWidgets()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 193
    .local v3, w:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/Button;

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 194
    check-cast v0, Landroid/widget/Button;

    .line 195
    .local v0, candidate:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    move-object v2, v0

    .line 199
    .end local v0           #candidate:Landroid/widget/Button;
    :cond_2
    if-eqz v2, :cond_1

    .line 202
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #w:Landroid/view/View;
    :cond_3
    invoke-direct {p0, v2, p3, p4}, Lit/unina/androidripper/automation/Automation;->fireEventOnView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void

    .line 188
    :cond_4
    const-string v4, "menuItem"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    iget-object v4, p0, Lit/unina/androidripper/automation/Automation;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v4, p1}, Lcom/jayway/android/robotium/solo/Solo;->getText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    goto :goto_0
.end method

.method private fireEventOnView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "v"
    .parameter "eventType"
    .parameter "value"

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lit/unina/androidripper/automation/Automation;->injectInteraction(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget v0, Lit/unina/androidripper/automation/Resources;->SLEEP_AFTER_EVENT:I

    invoke-virtual {p0, v0}, Lit/unina/androidripper/automation/Automation;->wait(I)V

    .line 208
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->waitOnThrobber()V

    .line 209
    invoke-direct {p0}, Lit/unina/androidripper/automation/Automation;->refreshCurrentActivity()V

    .line 210
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->extractState()V

    .line 211
    return-void
.end method

.method private fireGPSLocationChangeEvent(Ljava/lang/String;)V
    .locals 9
    .parameter "value"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 343
    iget-object v3, p0, Lit/unina/androidripper/automation/Automation;->locationManager:Landroid/location/LocationManager;

    sget-object v4, Lit/unina/androidripper/planning/Resources;->TEST_LOCATION_PROVIDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 344
    iget-object v3, p0, Lit/unina/androidripper/automation/Automation;->locationManager:Landroid/location/LocationManager;

    sget-object v4, Lit/unina/androidripper/planning/Resources;->TEST_LOCATION_PROVIDER:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 346
    :cond_0
    if-eqz p1, :cond_1

    .line 348
    const-string v3, "\\|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, stringValues:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-ne v3, v8, :cond_1

    .line 352
    new-array v0, v8, [D

    .line 353
    .local v0, doubleValues:[D
    aget-object v3, v2, v6

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    aput-wide v3, v0, v6

    .line 354
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    aput-wide v3, v0, v5

    .line 355
    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    aput-wide v3, v0, v7

    .line 357
    new-instance v1, Landroid/location/Location;

    sget-object v3, Lit/unina/androidripper/planning/Resources;->TEST_LOCATION_PROVIDER:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, location:Landroid/location/Location;
    aget-wide v3, v0, v6

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 359
    aget-wide v3, v0, v5

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 360
    aget-wide v3, v0, v7

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setAltitude(D)V

    .line 361
    iget-object v3, p0, Lit/unina/androidripper/automation/Automation;->locationManager:Landroid/location/LocationManager;

    sget-object v4, Lit/unina/androidripper/planning/Resources;->TEST_LOCATION_PROVIDER:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 364
    .end local v0           #doubleValues:[D
    .end local v1           #location:Landroid/location/Location;
    .end local v2           #stringValues:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private fireSensorEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "value"
    .parameter "interactionType"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 304
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 306
    const-string v4, "\\|"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, stringValues:[Ljava/lang/String;
    if-eqz v3, :cond_5

    array-length v4, v3

    if-ne v4, v8, :cond_5

    .line 310
    new-array v2, v8, [F

    .line 311
    .local v2, floatValues:[F
    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v2, v5

    .line 312
    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v2, v6

    .line 313
    aget-object v4, v3, v7

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v2, v7

    .line 315
    const/4 v0, 0x0

    .line 317
    .local v0, event:Lit/unina/android/hardware/mock/MockSensorEvent;
    const-string v4, "orientationSensorEvent"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lit/unina/android/hardware/mock/MockSensorEventFactory;->buildOrientationEvent([F)Lit/unina/android/hardware/mock/MockSensorEvent;

    move-result-object v0

    .line 318
    :cond_0
    const-string v4, "accelerometerSensorEvent"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lit/unina/android/hardware/mock/MockSensorEventFactory;->buildAccelerometerEvent([F)Lit/unina/android/hardware/mock/MockSensorEvent;

    move-result-object v0

    .line 319
    :cond_1
    const-string v4, "magneticFieldSensorEvent"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Lit/unina/android/hardware/mock/MockSensorEventFactory;->buildMagneticFieldEvent([F)Lit/unina/android/hardware/mock/MockSensorEvent;

    move-result-object v0

    .line 320
    :cond_2
    const-string v4, "temperatureSensorEvent"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Lit/unina/android/hardware/mock/MockSensorEventFactory;->buildTemperatureEvent([F)Lit/unina/android/hardware/mock/MockSensorEvent;

    move-result-object v0

    .line 321
    :cond_3
    const-string v4, "ambientTemperatureSensorEvent"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v2}, Lit/unina/android/hardware/mock/MockSensorEventFactory;->buildAmbientTemperatureEvent([F)Lit/unina/android/hardware/mock/MockSensorEvent;

    move-result-object v0

    .line 327
    :cond_4
    move-object v1, v0

    .line 328
    .local v1, eventToPost:Lit/unina/android/hardware/mock/MockSensorEvent;
    iget-object v4, p0, Lit/unina/androidripper/automation/Automation;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v4}, Lcom/jayway/android/robotium/solo/Solo;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lit/unina/androidripper/automation/Automation$1;

    invoke-direct {v5, p0, v1}, Lit/unina/androidripper/automation/Automation$1;-><init>(Lit/unina/androidripper/automation/Automation;Lit/unina/android/hardware/mock/MockSensorEvent;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 338
    .end local v0           #event:Lit/unina/android/hardware/mock/MockSensorEvent;
    .end local v1           #eventToPost:Lit/unina/android/hardware/mock/MockSensorEvent;
    .end local v2           #floatValues:[F
    .end local v3           #stringValues:[Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private injectInteraction(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "v"
    .parameter "interactionType"
    .parameter "value"

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lit/unina/androidripper/automation/Automation;->requestView(Landroid/view/View;)V

    .line 218
    :cond_0
    const-string v0, "click"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    invoke-static {p1}, Lit/unina/androidripper/automation/RobotUtilities;->click(Landroid/view/View;)V

    .line 299
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 222
    .restart local p1
    :cond_2
    const-string v0, "focus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    invoke-static {p1}, Lit/unina/androidripper/automation/RobotUtilities;->click(Landroid/view/View;)V

    goto :goto_0

    .line 226
    :cond_3
    const-string v0, "drag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    invoke-static {p1}, Lit/unina/androidripper/automation/RobotUtilities;->drag(Landroid/view/View;)V

    goto :goto_0

    .line 229
    :cond_4
    const-string v0, "longClick"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 230
    invoke-static {p1}, Lit/unina/androidripper/automation/RobotUtilities;->longClick(Landroid/view/View;)V

    goto :goto_0

    .line 231
    :cond_5
    const-string v0, "back"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 232
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->goBack()V

    goto :goto_0

    .line 233
    :cond_6
    const-string v0, "openMenu"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 234
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->openMenu()V

    goto :goto_0

    .line 235
    :cond_7
    const-string v0, "HomeClick"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 236
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->ActionBarHome()V

    goto :goto_0

    .line 237
    :cond_8
    const-string v0, "scrollDown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 238
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->scrollDown()V

    goto :goto_0

    .line 239
    :cond_9
    const-string v0, "changeOrientation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 240
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->changeOrientation()V

    goto :goto_0

    .line 241
    :cond_a
    const-string v0, "clickText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 242
    invoke-static {p3}, Lit/unina/androidripper/automation/RobotUtilities;->clickOnText(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_b
    const-string v0, "pressKey"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 244
    invoke-static {p3}, Lit/unina/androidripper/automation/RobotUtilities;->pressKey(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_c
    const-string v0, "swapTab"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p3, :cond_e

    .line 246
    instance-of v0, p1, Landroid/widget/TabHost;

    if-eqz v0, :cond_d

    .line 247
    invoke-static {p1, p3}, Lit/unina/androidripper/automation/RobotUtilities;->swapTab(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :cond_d
    invoke-virtual {p0, p3}, Lit/unina/androidripper/automation/Automation;->swapTab(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :cond_e
    const-string v0, "selectListItem"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 252
    check-cast p1, Landroid/widget/ListView;

    .end local p1
    invoke-static {p1, p3}, Lit/unina/androidripper/automation/RobotUtilities;->selectListItem(Landroid/widget/ListView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    .restart local p1
    :cond_f
    const-string v0, "longClickListItem"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 254
    check-cast p1, Landroid/widget/ListView;

    .end local p1
    const/4 v0, 0x1

    invoke-static {p1, p3, v0}, Lit/unina/androidripper/automation/RobotUtilities;->selectListItem(Landroid/widget/ListView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 255
    .restart local p1
    :cond_10
    const-string v0, "selectSpinnerItem"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 256
    check-cast p1, Landroid/widget/Spinner;

    .end local p1
    invoke-static {p1, p3}, Lit/unina/androidripper/automation/RobotUtilities;->selectSpinnerItem(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    .restart local p1
    :cond_11
    const-string v0, "selectRadioItem"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 258
    check-cast p1, Landroid/widget/RadioGroup;

    .end local p1
    invoke-static {p1, p3}, Lit/unina/androidripper/automation/RobotUtilities;->selectRadioItem(Landroid/widget/RadioGroup;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    .restart local p1
    :cond_12
    const-string v0, "editText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 260
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-static {p1, p3}, Lit/unina/androidripper/automation/RobotUtilities;->typeText(Landroid/widget/EditText;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    .restart local p1
    :cond_13
    const-string v0, "writeText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 264
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-static {p1, p3}, Lit/unina/androidripper/automation/RobotUtilities;->writeText(Landroid/widget/EditText;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    .restart local p1
    :cond_14
    const-string v0, "searchText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 268
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-static {p1, p3}, Lit/unina/androidripper/automation/RobotUtilities;->searchText(Landroid/widget/EditText;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    .restart local p1
    :cond_15
    const-string v0, "autoText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 271
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-static {p1, p3}, Lit/unina/androidripper/automation/RobotUtilities;->writeText(Landroid/widget/EditText;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    .restart local p1
    :cond_16
    const-string v0, "setBar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 274
    invoke-static {p1, p3}, Lit/unina/androidripper/automation/RobotUtilities;->setProgressBar(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :cond_17
    const-string v0, "orientationSensorEvent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "accelerometerSensorEvent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "magneticFieldSensorEvent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "temperatureSensorEvent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "ambientTemperatureSensorEvent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 284
    :cond_18
    invoke-direct {p0, p3, p2}, Lit/unina/androidripper/automation/Automation;->fireSensorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_19
    const-string v0, "gpsLocationChangeEvent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 286
    invoke-direct {p0, p3}, Lit/unina/androidripper/automation/Automation;->fireGPSLocationChangeEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :cond_1a
    const-string v0, "gpsProviderDisableEvent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 288
    invoke-direct {p0}, Lit/unina/androidripper/automation/Automation;->toggleGPSLocationProvider()V

    goto/16 :goto_0

    .line 289
    :cond_1b
    const-string v0, "incomingCallEvent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 290
    const-string v0, "1234"

    invoke-static {v0}, Lit/unina/androidripper/automation/utils/AndroidConsoleSocket;->callNumber(Ljava/lang/String;)V

    .line 291
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_1
    const-string v0, "1234"

    invoke-static {v0}, Lit/unina/androidripper/automation/utils/AndroidConsoleSocket;->hangUp(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    :cond_1c
    const-string v0, "incomingSMSEvent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    const-string v0, "1234"

    const-string v1, "THIS IS A TEST"

    invoke-static {v0, v1}, Lit/unina/androidripper/automation/utils/AndroidConsoleSocket;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static isInAndOutFocusEnabled()Z
    .locals 1

    .prologue
    .line 410
    sget-boolean v0, Lit/unina/androidripper/automation/Resources;->IN_AND_OUT_FOCUS:Z

    return v0
.end method

.method private processPrecrawling()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 487
    const-string v7, "androidripper"

    const-string v8, "Processing precrawling"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    .line 489
    .local v4, params:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 490
    .local v3, paramCount:I
    sget-object v0, Lit/unina/androidripper/automation/Resources;->PRECRAWLING:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 491
    .local v5, s:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v7, ".-.-."

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 492
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 511
    :goto_1
    const/4 v3, 0x0

    .line 490
    :goto_2
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    :pswitch_1
    const-string v7, "androidripper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Firing event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    aget-object v7, v4, v10

    invoke-direct {p0, v12, v7, v12}, Lit/unina/androidripper/automation/Automation;->fireEventOnView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 500
    :pswitch_2
    const-string v7, "androidripper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Firing event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    aget-object v7, v4, v10

    aget-object v8, v4, v11

    invoke-direct {p0, v12, v7, v8}, Lit/unina/androidripper/automation/Automation;->fireEventOnView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 505
    :pswitch_3
    aget-object v7, v4, v11

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lit/unina/androidripper/automation/Automation;->getWidget(I)Landroid/view/View;

    move-result-object v6

    .line 506
    .local v6, v:Landroid/view/View;
    const-string v7, "androidripper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Firing event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " on widget #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    aget-object v7, v4, v10

    aget-object v8, v4, v13

    invoke-direct {p0, v6, v7, v8}, Lit/unina/androidripper/automation/Automation;->fireEventOnView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 513
    .end local v6           #v:Landroid/view/View;
    :cond_1
    aput-object v5, v4, v3

    .line 514
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 517
    .end local v5           #s:Ljava/lang/String;
    :cond_2
    return-void

    .line 492
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshCurrentActivity()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Solo;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lit/unina/androidripper/automation/ExtractorUtilities;->setActivity(Landroid/app/Activity;)V

    .line 385
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current activity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method private setInput(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "widgetId"
    .parameter "inputType"
    .parameter "value"
    .parameter "widgetName"
    .parameter "widgetType"

    .prologue
    .line 389
    invoke-virtual {p0, p1, p5, p4}, Lit/unina/androidripper/automation/Automation;->getWidget(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 390
    .local v1, v:Landroid/view/View;
    if-nez v1, :cond_0

    .line 391
    invoke-virtual {p0, p1}, Lit/unina/androidripper/automation/Automation;->getWidget(I)Landroid/view/View;

    move-result-object v1

    .line 393
    :cond_0
    if-nez v1, :cond_1

    .line 394
    invoke-static {p1}, Lit/unina/androidripper/automation/ExtractorUtilities;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 396
    :cond_1
    if-nez v1, :cond_5

    .line 397
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->getAllWidgets()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 398
    .local v2, w:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/Button;

    if-nez v3, :cond_3

    instance-of v3, v2, Landroid/widget/RadioGroup;

    if-eqz v3, :cond_4

    .line 399
    :cond_3
    invoke-static {v2}, Lit/unina/androidripper/automation/AbstractorUtilities;->getType(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 400
    invoke-static {v2}, Lit/unina/androidripper/automation/AbstractorUtilities;->detectName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v1, v2

    .line 402
    :cond_4
    :goto_0
    if-eqz v1, :cond_2

    .line 406
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #w:Landroid/view/View;
    :cond_5
    invoke-direct {p0, v1, p2, p3}, Lit/unina/androidripper/automation/Automation;->injectInteraction(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void

    .line 400
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #w:Landroid/view/View;
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toggleGPSLocationProvider()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 369
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->locationManager:Landroid/location/LocationManager;

    sget-object v1, Lit/unina/androidripper/planning/Resources;->TEST_LOCATION_PROVIDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 372
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->locationManager:Landroid/location/LocationManager;

    sget-object v1, Lit/unina/androidripper/planning/Resources;->TEST_LOCATION_PROVIDER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 375
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->locationManager:Landroid/location/LocationManager;

    sget-object v1, Lit/unina/androidripper/planning/Resources;->TEST_LOCATION_PROVIDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 380
    :cond_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public afterRestart()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->solo:Lcom/jayway/android/robotium/solo/Solo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Solo;->setActivityOrientation(I)V

    .line 475
    sget v0, Lit/unina/androidripper/automation/Resources;->SLEEP_AFTER_RESTART:I

    invoke-virtual {p0, v0}, Lit/unina/androidripper/automation/Automation;->wait(I)V

    .line 476
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->waitOnThrobber()V

    .line 477
    sget-object v0, Lit/unina/androidripper/automation/Resources;->PRECRAWLING:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lit/unina/androidripper/automation/Automation;->precrawlNeeded:Z

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/unina/androidripper/automation/Automation;->precrawlNeeded:Z

    .line 479
    invoke-direct {p0}, Lit/unina/androidripper/automation/Automation;->refreshCurrentActivity()V

    .line 480
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->extractState()V

    .line 481
    invoke-direct {p0}, Lit/unina/androidripper/automation/Automation;->processPrecrawling()V

    .line 483
    :cond_0
    const-string v0, "androidripper"

    const-string v1, "Ready to operate after restarting..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method

.method public bind(Landroid/test/ActivityInstrumentationTestCase2;)V
    .locals 3
    .parameter "test"

    .prologue
    .line 84
    invoke-static {p1}, Lit/unina/androidripper/automation/RobotUtilities;->createRobotium(Landroid/test/ActivityInstrumentationTestCase2;)Lcom/jayway/android/robotium/solo/Solo;

    move-result-object v0

    iput-object v0, p0, Lit/unina/androidripper/automation/Automation;->solo:Lcom/jayway/android/robotium/solo/Solo;

    .line 85
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->afterRestart()V

    .line 86
    invoke-direct {p0}, Lit/unina/androidripper/automation/Automation;->refreshCurrentActivity()V

    .line 87
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lit/unina/androidripper/automation/ExtractorUtilities;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public bindInstrumentationTestCase(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V
    .locals 3
    .parameter "test"
    .parameter "activity"

    .prologue
    .line 92
    invoke-static {p1, p2}, Lit/unina/androidripper/automation/RobotUtilities;->createRobotiumWithInstrumentationTestCase(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)Lcom/jayway/android/robotium/solo/Solo;

    move-result-object v0

    iput-object v0, p0, Lit/unina/androidripper/automation/Automation;->solo:Lcom/jayway/android/robotium/solo/Solo;

    .line 93
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->afterRestart()V

    .line 94
    invoke-direct {p0}, Lit/unina/androidripper/automation/Automation;->refreshCurrentActivity()V

    .line 95
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lit/unina/androidripper/automation/ExtractorUtilities;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public captureImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->imageCaptor:Lit/unina/androidripper/model/ImageCaptor;

    invoke-interface {v0}, Lit/unina/androidripper/model/ImageCaptor;->captureImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public checkWidgetEquivalence(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "testee"
    .parameter "theId"
    .parameter "theType"
    .parameter "theName"

    .prologue
    const/4 v2, 0x0

    .line 562
    const-string v3, "androidripper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieved from return list id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-static {p1}, Lit/unina/androidripper/automation/AbstractorUtilities;->getType(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, testeeType:Ljava/lang/String;
    const-string v3, "androidripper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Testing for type ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") against the original ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 570
    :cond_0
    :goto_0
    return v2

    .line 568
    :cond_1
    invoke-static {p1}, Lit/unina/androidripper/automation/AbstractorUtilities;->detectName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, testeeName:Ljava/lang/String;
    const-string v3, "androidripper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Testing for name ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") against the original ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne p2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public clearWidgetList()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->theViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 423
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->allViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 424
    return-void
.end method

.method public describeActivity()Lit/unina/androidripper/model/ActivityDescription;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->extractor:Lit/unina/androidripper/model/Extractor;

    invoke-interface {v0}, Lit/unina/androidripper/model/Extractor;->describeActivity()Lit/unina/androidripper/model/ActivityDescription;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 98
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->theRobot:Lit/unina/androidripper/model/Robot;

    invoke-interface {v0, p1}, Lit/unina/androidripper/model/Robot;->process(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 99
    return-void
.end method

.method public extractState()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->extractor:Lit/unina/androidripper/model/Extractor;

    invoke-interface {v0}, Lit/unina/androidripper/model/Extractor;->extractState()V

    .line 590
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lit/unina/androidripper/automation/Automation;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v1}, Lcom/jayway/android/robotium/solo/Solo;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 129
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public fireEvent(Lcom/nofatclips/androidtesting/model/UserEvent;)V
    .locals 8
    .parameter "e"

    .prologue
    const/4 v7, 0x0

    .line 132
    iput-object p1, p0, Lit/unina/androidripper/automation/Automation;->currentEvent:Lcom/nofatclips/androidtesting/model/UserEvent;

    .line 133
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, eventType:Ljava/lang/String;
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, eventValue:Ljava/lang/String;
    const-string v0, "back"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "scrollDown"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing event: type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0, v7, v4, v7}, Lit/unina/androidripper/automation/Automation;->fireEventOnView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    iput-object v7, p0, Lit/unina/androidripper/automation/Automation;->currentEvent:Lcom/nofatclips/androidtesting/model/UserEvent;

    .line 158
    return-void

    .line 138
    :cond_1
    const-string v0, "clickText"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing event: type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0, v7, v4, v5}, Lit/unina/androidripper/automation/Automation;->fireEventOnView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_2
    const/4 v6, 0x0

    .line 143
    .local v6, v:Landroid/view/View;
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v0

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->getAllWidgets()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 144
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->getAllWidgets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v1

    invoke-interface {v1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #v:Landroid/view/View;
    check-cast v6, Landroid/view/View;

    .line 146
    .restart local v6       #v:Landroid/view/View;
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidgetType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidgetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6, v0, v1, v2}, Lit/unina/androidripper/automation/Automation;->checkWidgetEquivalence(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing event: type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v2

    invoke-interface {v2}, Lcom/nofatclips/androidtesting/model/WidgetState;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " widget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidgetType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0, v6, v4, v5}, Lit/unina/androidripper/automation/Automation;->fireEventOnView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :cond_4
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 150
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing event: type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidgetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " widget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidgetType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidgetName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v1

    invoke-interface {v1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4, v5}, Lit/unina/androidripper/automation/Automation;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_5
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing event: type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " widget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidgetType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidgetName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v0

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lit/unina/androidripper/automation/Automation;->fireEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 458
    invoke-static {}, Lit/unina/androidripper/automation/ExtractorUtilities;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getAllWidgets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->allViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Solo;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidget(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 549
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->extractor:Lit/unina/androidripper/model/Extractor;

    invoke-interface {v0, p1}, Lit/unina/androidripper/model/Extractor;->getWidget(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWidget(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter "theId"
    .parameter "theType"
    .parameter "theName"

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lit/unina/androidripper/automation/Automation;->getWidgetsById(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 554
    .local v1, testee:Landroid/view/View;
    invoke-virtual {p0, v1, p1, p2, p3}, Lit/unina/androidripper/automation/Automation;->checkWidgetEquivalence(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    .end local v1           #testee:Landroid/view/View;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWidgets()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->theViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getWidgetsById(I)Ljava/util/ArrayList;
    .locals 6
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v1, theList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->getAllWidgets()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 576
    .local v2, theView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 577
    const-string v3, "androidripper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added to return list id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 581
    .end local v2           #theView:Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method public onClickEventFired(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 599
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->currentEvent:Lcom/nofatclips/androidtesting/model/UserEvent;

    invoke-static {v0, p1}, Lit/unina/androidripper/automation/AbstractorUtilities;->describeCurrentEvent(Lcom/nofatclips/androidtesting/model/UserEvent;Landroid/view/View;)Z

    .line 600
    return-void
.end method

.method public onKeyEventFired(I)V
    .locals 1
    .parameter "ignore"

    .prologue
    .line 607
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->currentEvent:Lcom/nofatclips/androidtesting/model/UserEvent;

    invoke-static {v0}, Lit/unina/androidripper/automation/AbstractorUtilities;->describeKeyEvent(Lcom/nofatclips/androidtesting/model/UserEvent;)Z

    .line 608
    return-void
.end method

.method public onLongClickEventFired(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lit/unina/androidripper/automation/Automation;->onClickEventFired(Landroid/view/View;)V

    .line 604
    return-void
.end method

.method public process(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 102
    const-string v2, "androidripper"

    const-string v3, "Restarting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-boolean v2, Lit/unina/androidripper/automation/Resources;->FORCE_RESTART:Z

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lit/unina/androidripper/automation/Automation;->restarter:Lit/unina/androidripper/model/Restarter;

    invoke-interface {v2}, Lit/unina/androidripper/model/Restarter;->restart()V

    .line 105
    const/4 v2, 0x1

    iput-boolean v2, p0, Lit/unina/androidripper/automation/Automation;->precrawlNeeded:Z

    .line 107
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->afterRestart()V

    .line 108
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->extractState()V

    .line 109
    const-string v2, "androidripper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playing Trace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/Trace;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/Trace;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nofatclips/androidtesting/model/Transition;

    .line 111
    .local v1, step:Lcom/nofatclips/androidtesting/model/Transition;
    invoke-virtual {p0, v1}, Lit/unina/androidripper/automation/Automation;->process(Lcom/nofatclips/androidtesting/model/Transition;)V

    goto :goto_0

    .line 113
    .end local v1           #step:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_1
    return-void
.end method

.method public process(Lcom/nofatclips/androidtesting/model/Transition;)V
    .locals 3
    .parameter "step"

    .prologue
    .line 116
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/Transition;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/UserInput;

    .line 117
    .local v0, i:Lcom/nofatclips/androidtesting/model/UserInput;
    invoke-virtual {p0, v0}, Lit/unina/androidripper/automation/Automation;->setInput(Lcom/nofatclips/androidtesting/model/UserInput;)V

    goto :goto_0

    .line 119
    .end local v0           #i:Lcom/nofatclips/androidtesting/model/UserInput;
    :cond_0
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/Transition;->getEvent()Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lit/unina/androidripper/automation/Automation;->fireEvent(Lcom/nofatclips/androidtesting/model/UserEvent;)V

    .line 120
    return-void
.end method

.method protected requestView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 414
    invoke-static {}, Lit/unina/androidripper/automation/Automation;->isInAndOutFocusEnabled()Z

    move-result v0

    invoke-static {p1, v0}, Lit/unina/androidripper/automation/RobotUtilities;->requestView(Landroid/view/View;Z)V

    .line 415
    return-void
.end method

.method public retrieveWidgets()V
    .locals 7

    .prologue
    .line 427
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->home()V

    .line 428
    invoke-virtual {p0}, Lit/unina/androidripper/automation/Automation;->clearWidgetList()V

    .line 429
    const-string v4, "androidripper"

    const-string v5, "Retrieving widgets"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Lit/unina/androidripper/automation/Automation;->isInAndOutFocusEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lit/unina/androidripper/automation/Automation;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v4}, Lcom/jayway/android/robotium/solo/Solo;->getViews()Ljava/util/ArrayList;

    move-result-object v2

    .line 431
    .local v2, viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 432
    .local v3, w:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, text:Ljava/lang/String;
    :goto_2
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found widget: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v4, p0, Lit/unina/androidripper/automation/Automation;->allViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    if-lez v4, :cond_1

    .line 436
    iget-object v4, p0, Lit/unina/androidripper/automation/Automation;->theViews:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    :cond_1
    instance-of v4, v3, Landroid/widget/TabHost;

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 439
    check-cast v4, Landroid/widget/TabHost;

    invoke-virtual {p0, v4}, Lit/unina/androidripper/automation/Automation;->setTabs(Landroid/widget/TabHost;)V

    .line 440
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found tabhost: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 430
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #text:Ljava/lang/String;
    .end local v2           #viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #w:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lit/unina/androidripper/automation/Automation;->solo:Lcom/jayway/android/robotium/solo/Solo;

    invoke-virtual {v4}, Lcom/jayway/android/robotium/solo/Solo;->getCurrentViews()Ljava/util/ArrayList;

    move-result-object v2

    goto/16 :goto_0

    .line 432
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v3       #w:Landroid/view/View;
    :cond_3
    const-string v1, ""

    goto :goto_2

    .line 443
    .end local v3           #w:Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setExtractor(Lit/unina/androidripper/model/Extractor;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 462
    iput-object p1, p0, Lit/unina/androidripper/automation/Automation;->extractor:Lit/unina/androidripper/model/Extractor;

    .line 463
    return-void
.end method

.method public setInput(Lcom/nofatclips/androidtesting/model/UserInput;)V
    .locals 6
    .parameter "i"

    .prologue
    .line 161
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting input: type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserInput;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserInput;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserInput;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserInput;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserInput;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserInput;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserInput;->getWidgetName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/UserInput;->getWidgetType()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lit/unina/androidripper/automation/Automation;->setInput(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public setRestarter(Lit/unina/androidripper/model/Restarter;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 466
    iput-object p1, p0, Lit/unina/androidripper/automation/Automation;->restarter:Lit/unina/androidripper/model/Restarter;

    .line 467
    return-void
.end method

.method public setRobot(Lit/unina/androidripper/model/Robot;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 446
    iput-object p1, p0, Lit/unina/androidripper/automation/Automation;->theRobot:Lit/unina/androidripper/model/Robot;

    .line 447
    return-void
.end method

.method public setTabs(Landroid/widget/TabHost;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 470
    iput-object p1, p0, Lit/unina/androidripper/automation/Automation;->tabs:Landroid/widget/TabHost;

    .line 471
    return-void
.end method

.method public swapTab(I)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 170
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->tabs:Landroid/widget/TabHost;

    invoke-static {v0, p1}, Lit/unina/androidripper/automation/RobotUtilities;->swapTab(Landroid/widget/TabHost;I)V

    .line 171
    return-void
.end method

.method public swapTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 166
    iget-object v0, p0, Lit/unina/androidripper/automation/Automation;->tabs:Landroid/widget/TabHost;

    invoke-static {v0, p1}, Lit/unina/androidripper/automation/RobotUtilities;->swapTab(Landroid/widget/TabHost;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public wait(I)V
    .locals 0
    .parameter "milli"

    .prologue
    .line 418
    invoke-static {p1}, Lit/unina/androidripper/automation/RobotUtilities;->wait(I)V

    .line 419
    return-void
.end method

.method public waitOnThrobber()V
    .locals 10

    .prologue
    .line 520
    sget v6, Lit/unina/androidripper/automation/Resources;->SLEEP_ON_THROBBER:I

    .line 521
    .local v6, sleepTime:I
    if-nez v6, :cond_0

    .line 542
    :goto_0
    return-void

    .line 525
    :cond_0
    const/4 v2, 0x0

    .line 526
    .local v2, flag:Z
    const/4 v5, 0x0

    .line 527
    .local v5, oldId:I
    iget-object v7, p0, Lit/unina/androidripper/automation/Automation;->solo:Lcom/jayway/android/robotium/solo/Solo;

    const-class v8, Landroid/widget/ProgressBar;

    invoke-virtual {v7, v8}, Lcom/jayway/android/robotium/solo/Solo;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 528
    .local v1, bars:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ProgressBar;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 529
    .local v0, b:Landroid/widget/ProgressBar;
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 530
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getId()I

    move-result v4

    .line 531
    .local v4, newId:I
    if-eq v4, v5, :cond_2

    .line 532
    const-string v7, "androidripper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Waiting on Progress Bar #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    move v5, v4

    .line 535
    :cond_2
    const/4 v2, 0x1

    .line 536
    const/16 v7, 0x1f4

    invoke-virtual {p0, v7}, Lit/unina/androidripper/automation/Automation;->wait(I)V

    .line 537
    add-int/lit16 v6, v6, -0x1f4

    goto :goto_1

    .line 540
    .end local v0           #b:Landroid/widget/ProgressBar;
    .end local v4           #newId:I
    :cond_3
    if-eqz v2, :cond_4

    if-gtz v6, :cond_0

    .line 541
    :cond_4
    invoke-static {}, Lit/unina/androidripper/automation/RobotUtilities;->sync()V

    goto :goto_0
.end method
