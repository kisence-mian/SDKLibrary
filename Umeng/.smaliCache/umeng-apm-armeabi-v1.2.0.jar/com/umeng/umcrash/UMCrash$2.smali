.class final Lcom/umeng/umcrash/UMCrash$2;
.super Ljava/lang/Object;
.source "UMCrash.java"

# interfaces
.implements Lcom/efs/sdk/pa/config/IEfsReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/umcrash/UMCrash;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReporter()Lcom/efs/sdk/base/EfsReporter;
    .registers 2

    .line 353
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    return-object v0
.end method
