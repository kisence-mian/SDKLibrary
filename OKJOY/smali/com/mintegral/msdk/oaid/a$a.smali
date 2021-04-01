.class final Lcom/mintegral/msdk/oaid/a$a;
.super Ljava/lang/Object;
.source "OaidAidlUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/oaid/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/oaid/a;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/oaid/a;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/oaid/a;B)V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/oaid/a$a;-><init>(Lcom/mintegral/msdk/oaid/a;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .prologue
    .line 73
    const-string v0, "OaidAidlUtil"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {p2}, Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService$a;->a(Landroid/os/IBinder;)Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/oaid/a;->a(Lcom/mintegral/msdk/oaid/a;Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;)Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;

    .line 75
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {v0}, Lcom/mintegral/msdk/oaid/a;->a(Lcom/mintegral/msdk/oaid/a;)Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 77
    :try_start_18
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {v0}, Lcom/mintegral/msdk/oaid/a;->b(Lcom/mintegral/msdk/oaid/a;)Lcom/mintegral/msdk/oaid/b;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 78
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {v0}, Lcom/mintegral/msdk/oaid/a;->b(Lcom/mintegral/msdk/oaid/a;)Lcom/mintegral/msdk/oaid/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {v1}, Lcom/mintegral/msdk/oaid/a;->a(Lcom/mintegral/msdk/oaid/a;)Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;->getOaid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {v2}, Lcom/mintegral/msdk/oaid/a;->a(Lcom/mintegral/msdk/oaid/a;)Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;

    move-result-object v2

    invoke-interface {v2}, Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;->isOaidTrackLimited()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/oaid/b;->a(Ljava/lang/String;Z)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_3d} :catch_43
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3d} :catch_66
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_3d} :catch_89
    .catchall {:try_start_18 .. :try_end_3d} :catchall_97

    .line 93
    :cond_3d
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {v0}, Lcom/mintegral/msdk/oaid/a;->c(Lcom/mintegral/msdk/oaid/a;)V

    .line 96
    :cond_42
    :goto_42
    return-void

    .line 80
    :catch_43
    move-exception v0

    .line 81
    :try_start_44
    const-string v1, "OaidAidlUtil"

    const-string v2, "getChannelInfo RemoteException"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {v1}, Lcom/mintegral/msdk/oaid/a;->b(Lcom/mintegral/msdk/oaid/a;)Lcom/mintegral/msdk/oaid/b;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 83
    iget-object v1, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {v1}, Lcom/mintegral/msdk/oaid/a;->b(Lcom/mintegral/msdk/oaid/a;)Lcom/mintegral/msdk/oaid/b;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/oaid/b;->a(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_44 .. :try_end_60} :catchall_97

    .line 93
    :cond_60
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {v0}, Lcom/mintegral/msdk/oaid/a;->c(Lcom/mintegral/msdk/oaid/a;)V

    goto :goto_42

    .line 85
    :catch_66
    move-exception v0

    .line 86
    :try_start_67
    const-string v1, "OaidAidlUtil"

    const-string v2, "getChannelInfo Excepition"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {v1}, Lcom/mintegral/msdk/oaid/a;->b(Lcom/mintegral/msdk/oaid/a;)Lcom/mintegral/msdk/oaid/b;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 88
    iget-object v1, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {v1}, Lcom/mintegral/msdk/oaid/a;->b(Lcom/mintegral/msdk/oaid/a;)Lcom/mintegral/msdk/oaid/b;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/oaid/b;->a(Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_67 .. :try_end_83} :catchall_97

    .line 93
    :cond_83
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {v0}, Lcom/mintegral/msdk/oaid/a;->c(Lcom/mintegral/msdk/oaid/a;)V

    goto :goto_42

    .line 91
    :catch_89
    move-exception v0

    :try_start_8a
    const-string v0, "OaidAidlUtil"

    const-string v1, "getChannelInfo Excepition"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_97

    .line 93
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {v0}, Lcom/mintegral/msdk/oaid/a;->c(Lcom/mintegral/msdk/oaid/a;)V

    goto :goto_42

    :catchall_97
    move-exception v0

    iget-object v1, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    invoke-static {v1}, Lcom/mintegral/msdk/oaid/a;->c(Lcom/mintegral/msdk/oaid/a;)V

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 100
    const-string v0, "OaidAidlUtil"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a$a;->a:Lcom/mintegral/msdk/oaid/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/oaid/a;->a(Lcom/mintegral/msdk/oaid/a;Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;)Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;

    .line 102
    return-void
.end method
