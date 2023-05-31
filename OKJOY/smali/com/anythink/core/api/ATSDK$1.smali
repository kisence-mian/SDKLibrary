.class final Lcom/anythink/core/api/ATSDK$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/api/ATSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATSDKInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 85
    invoke-static {}, Lcom/anythink/core/b/l;->a()Lcom/anythink/core/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/l;->b()V

    .line 86
    return-void
.end method
