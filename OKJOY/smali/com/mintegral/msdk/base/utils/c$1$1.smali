.class final Lcom/mintegral/msdk/base/utils/c$1$1;
.super Ljava/lang/Object;
.source "CommonDeviceUtil.java"

# interfaces
.implements Lcom/mintegral/msdk/oaid/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/utils/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/utils/c$1;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/utils/c$1;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mintegral/msdk/base/utils/c$1$1;->a:Lcom/mintegral/msdk/base/utils/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 158
    const-string v0, "CommonDeviceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOaid failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 152
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    const-string v0, "CommonDeviceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOaid oaid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isOaidTrackLimited = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method
