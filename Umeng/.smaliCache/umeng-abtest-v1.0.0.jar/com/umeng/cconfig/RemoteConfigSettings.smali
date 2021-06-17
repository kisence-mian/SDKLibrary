.class public Lcom/umeng/cconfig/RemoteConfigSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/cconfig/RemoteConfigSettings$Builder;
    }
.end annotation


# instance fields
.field private final autoUpdateConfig:Z


# direct methods
.method private constructor <init>(Lcom/umeng/cconfig/RemoteConfigSettings$Builder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/umeng/cconfig/RemoteConfigSettings$Builder;->autoUpdateConfig:Z
    invoke-static {p1}, Lcom/umeng/cconfig/RemoteConfigSettings$Builder;->access$000(Lcom/umeng/cconfig/RemoteConfigSettings$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/umeng/cconfig/RemoteConfigSettings;->autoUpdateConfig:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/cconfig/RemoteConfigSettings$Builder;Lcom/umeng/cconfig/RemoteConfigSettings$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/umeng/cconfig/RemoteConfigSettings;-><init>(Lcom/umeng/cconfig/RemoteConfigSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public isAutoUpdateModeEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/umeng/cconfig/RemoteConfigSettings;->autoUpdateConfig:Z

    return v0
.end method
