.class public Lcom/umeng/commonsdk/statistics/idtracking/f;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "ImeiTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "imei"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 13
    const-string v0, "imei"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/f;->b:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getImeiNew(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
