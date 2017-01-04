.class public Lit/unina/androidripper/strategy/comparator/Resources;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Lit/unina/androidripper/model/ResourceFile;


# static fields
.field public static COMPARATOR:Lit/unina/androidripper/model/Comparator;

.field public static COMPARATOR_TYPE:Ljava/lang/String;

.field public static COMPARE_ACTIVITY_NAME:Z

.field public static COMPARE_LIST_COUNT:Z

.field public static COMPARE_MENU_COUNT:Z

.field public static COMPARE_STATE_TITLE:Z

.field public static COMPARE_VALUES:Z

.field public static WIDGET_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11
    const-string v0, "NullComparator"

    sput-object v0, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR_TYPE:Ljava/lang/String;

    .line 12
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lit/unina/androidripper/strategy/comparator/Resources;->WIDGET_TYPES:[Ljava/lang/String;

    .line 13
    sput-boolean v2, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARE_ACTIVITY_NAME:Z

    .line 14
    sput-boolean v1, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARE_STATE_TITLE:Z

    .line 15
    sput-boolean v1, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARE_LIST_COUNT:Z

    .line 16
    sput-boolean v2, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARE_MENU_COUNT:Z

    .line 17
    sput-boolean v1, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARE_VALUES:Z

    .line 46
    new-instance v0, Lit/unina/androidripper/strategy/comparator/NullComparator;

    invoke-direct {v0}, Lit/unina/androidripper/strategy/comparator/NullComparator;-><init>()V

    sput-object v0, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR:Lit/unina/androidripper/model/Comparator;

    .line 48
    const-string v0, "comparator"

    const-class v1, Lit/unina/androidripper/strategy/comparator/Resources;

    invoke-static {v0, v1}, Lit/unina/androidripper/Prefs;->updateNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 49
    invoke-static {}, Lit/unina/androidripper/strategy/comparator/Resources;->getComparator()V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComparator()V
    .locals 5

    .prologue
    .line 20
    sget-object v3, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR_TYPE:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR_TYPE:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 44
    .local v0, className:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 22
    .end local v0           #className:Ljava/lang/String;
    :cond_1
    sget-object v3, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR_TYPE:Ljava/lang/String;

    const-string v4, "CustomWidgetsSimpleComparator"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 23
    new-instance v3, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;

    sget-object v4, Lit/unina/androidripper/strategy/comparator/Resources;->WIDGET_TYPES:[Ljava/lang/String;

    invoke-direct {v3, v4}, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;-><init>([Ljava/lang/String;)V

    sput-object v3, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR:Lit/unina/androidripper/model/Comparator;

    goto :goto_0

    .line 24
    :cond_2
    sget-object v3, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR_TYPE:Ljava/lang/String;

    const-string v4, "CustomWidgetsIntensiveComparator"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25
    new-instance v3, Lit/unina/androidripper/strategy/comparator/CustomWidgetsIntensiveComparator;

    sget-object v4, Lit/unina/androidripper/strategy/comparator/Resources;->WIDGET_TYPES:[Ljava/lang/String;

    invoke-direct {v3, v4}, Lit/unina/androidripper/strategy/comparator/CustomWidgetsIntensiveComparator;-><init>([Ljava/lang/String;)V

    sput-object v3, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR:Lit/unina/androidripper/model/Comparator;

    goto :goto_0

    .line 26
    :cond_3
    sget-object v3, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR_TYPE:Ljava/lang/String;

    const-string v4, "NameComparator"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 27
    new-instance v3, Lit/unina/androidripper/strategy/comparator/NameComparator;

    invoke-direct {v3}, Lit/unina/androidripper/strategy/comparator/NameComparator;-><init>()V

    sput-object v3, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR:Lit/unina/androidripper/model/Comparator;

    goto :goto_0

    .line 30
    :cond_4
    :try_start_0
    sget-object v3, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR_TYPE:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "it.unina.androidripper.strategy.comparator."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .restart local v0       #className:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 33
    .local v2, theClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lit/unina/androidripper/model/Comparator;

    sput-object v3, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR:Lit/unina/androidripper/model/Comparator;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 34
    .end local v2           #theClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 35
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 30
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :cond_5
    :try_start_1
    sget-object v0, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR_TYPE:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 36
    .restart local v0       #className:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 37
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 39
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
