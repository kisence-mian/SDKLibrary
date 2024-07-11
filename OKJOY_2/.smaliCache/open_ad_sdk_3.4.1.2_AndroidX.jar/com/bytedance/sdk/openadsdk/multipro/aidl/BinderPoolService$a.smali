.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService$a;
.super Lcom/bytedance/sdk/openadsdk/IBinderPool$Stub;
.source "BinderPoolService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/BinderPoolService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/IBinderPool$Stub;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public queryBinder(I)Landroid/os/IBinder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryBinder...........binderCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiProcess"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    nop

    .line 64
    packed-switch p1, :pswitch_data_38

    const/4 p1, 0x0

    goto :goto_37

    .line 79
    :pswitch_1e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/d;

    move-result-object p1

    .line 80
    goto :goto_37

    .line 84
    :pswitch_23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;

    move-result-object p1

    .line 85
    goto :goto_37

    .line 74
    :pswitch_28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;

    move-result-object p1

    .line 75
    goto :goto_37

    .line 70
    :pswitch_2d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/e;

    move-result-object p1

    .line 71
    goto :goto_37

    .line 66
    :pswitch_32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/f;

    move-result-object p1

    .line 67
    nop

    .line 91
    :goto_37
    return-object p1

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method
