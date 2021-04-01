.class final Lcom/ss/android/socialbase/appdownloader/b$1;
.super Ljava/lang/Object;
.source "AntiHijackUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 663
    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/b;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
