.class public Lit/unina/androidripper/helpers/PackageManagerHelper;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "androidripper"


# instance fields
.field public packageInfo:Landroid/content/pm/PackageInfo;

.field private permissionCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v2, p0, Lit/unina/androidripper/helpers/PackageManagerHelper;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 19
    iput-object v2, p0, Lit/unina/androidripper/helpers/PackageManagerHelper;->permissionCache:Ljava/util/ArrayList;

    .line 25
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 26
    .local v1, pm:Landroid/content/pm/PackageManager;
    sget-object v2, Lit/unina/androidripper/Resources;->PACKAGE_NAME:Ljava/lang/String;

    const/16 v3, 0x1009

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lit/unina/androidripper/helpers/PackageManagerHelper;->packageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-void

    .line 28
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 30
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "androidripper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    throw v0
.end method


# virtual methods
.method public activityCanRotate(Ljava/lang/String;)Z
    .locals 5
    .parameter "activityCanonicalName"

    .prologue
    .line 86
    iget-object v4, p0, Lit/unina/androidripper/helpers/PackageManagerHelper;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v1, arr$:[Landroid/content/pm/ActivityInfo;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 88
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public canSendSMS()Z
    .locals 1

    .prologue
    .line 81
    const-string v0, "android.permission.SEND_SMS"

    invoke-virtual {p0, v0}, Lit/unina/androidripper/helpers/PackageManagerHelper;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPackagePermissions()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v5, p0, Lit/unina/androidripper/helpers/PackageManagerHelper;->permissionCache:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lit/unina/androidripper/helpers/PackageManagerHelper;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 44
    .local v3, p:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v3           #p:Ljava/lang/String;
    :cond_0
    iput-object v4, p0, Lit/unina/androidripper/helpers/PackageManagerHelper;->permissionCache:Ljava/util/ArrayList;

    .line 50
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p0, Lit/unina/androidripper/helpers/PackageManagerHelper;->permissionCache:Ljava/util/ArrayList;

    return-object v5
.end method

.method public hasAccessMockLocationPermission()Z
    .locals 1

    .prologue
    .line 71
    const-string v0, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {p0, v0}, Lit/unina/androidripper/helpers/PackageManagerHelper;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasInternetPermission()Z
    .locals 1

    .prologue
    .line 66
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Lit/unina/androidripper/helpers/PackageManagerHelper;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 4
    .parameter "permission"

    .prologue
    .line 55
    invoke-virtual {p0}, Lit/unina/androidripper/helpers/PackageManagerHelper;->getPackagePermissions()Ljava/util/ArrayList;

    move-result-object v2

    .line 57
    .local v2, perms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    .local v1, perm:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const/4 v3, 0x1

    .line 61
    .end local v1           #perm:Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public reactsToSMSReceive()Z
    .locals 1

    .prologue
    .line 76
    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0}, Lit/unina/androidripper/helpers/PackageManagerHelper;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
