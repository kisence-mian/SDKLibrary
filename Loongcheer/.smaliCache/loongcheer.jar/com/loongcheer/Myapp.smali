.class public Lcom/loongcheer/Myapp;
.super Landroid/app/Application;
.source "Myapp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .line 14
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 15
    invoke-static {}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->getInstance()Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    move-result-object v0

    const-string v1, "kmTtqYBF8BUCjWhprBRPm8"

    invoke-virtual {v0, p0, v1}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->init(Landroid/app/Application;Ljava/lang/String;)V

    .line 17
    return-void
.end method
