.class public Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;
.super Ljava/lang/Object;
.source "ActivityReflectionCacheElement.java"


# instance fields
.field public handlesKeyPress:Ljava/lang/Boolean;

.field public handlesLongKeyPress:Ljava/lang/Boolean;

.field public hasMenu:Ljava/lang/Boolean;

.field public hasOnOptionsItemSelected:Ljava/lang/Boolean;

.field public isTabActivity:Ljava/lang/Boolean;

.field public usesLocation:Ljava/lang/Boolean;

.field public usesSensors:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->usesSensors:Ljava/lang/Boolean;

    .line 5
    iput-object v0, p0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->usesLocation:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->hasMenu:Ljava/lang/Boolean;

    .line 7
    iput-object v0, p0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->hasOnOptionsItemSelected:Ljava/lang/Boolean;

    .line 8
    iput-object v0, p0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->handlesKeyPress:Ljava/lang/Boolean;

    .line 9
    iput-object v0, p0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->handlesLongKeyPress:Ljava/lang/Boolean;

    .line 10
    iput-object v0, p0, Lit/unina/androidripper/automation/utils/ActivityReflectionCacheElement;->isTabActivity:Ljava/lang/Boolean;

    return-void
.end method
