.class final Lcom/mintegral/msdk/c/c$1$2;
.super Ljava/lang/Object;
.source "SettingRequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/c/c$1;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/c/c$1;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/c/c$1;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mintegral/msdk/c/c$1$2;->a:Lcom/mintegral/msdk/c/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .prologue
    .line 74
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->e()V

    .line 75
    return-void
.end method
