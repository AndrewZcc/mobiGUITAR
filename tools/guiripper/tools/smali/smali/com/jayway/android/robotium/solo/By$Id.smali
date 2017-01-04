.class Lcom/jayway/android/robotium/solo/By$Id;
.super Lcom/jayway/android/robotium/solo/By;
.source "By.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/android/robotium/solo/By;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Id"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/By;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/By$Id;->id:Ljava/lang/String;

    .line 112
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/By$Id;->id:Ljava/lang/String;

    return-object v0
.end method
