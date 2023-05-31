.class public Lcom/heytap/openid/sdk/c;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/openid/sdk/c$a;
    }
.end annotation


# instance fields
.field public a:Lcom/heytap/openid/a;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public final d:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public e:Landroid/content/ServiceConnection;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/heytap/openid/sdk/b;)V
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/heytap/openid/sdk/c;->a:Lcom/heytap/openid/a;

    iput-object v0, p0, Lcom/heytap/openid/sdk/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/openid/sdk/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/heytap/openid/sdk/c;->d:Ljava/lang/Object;

    new-instance v0, Lcom/heytap/openid/sdk/b;

    invoke-direct {v0, p0}, Lcom/heytap/openid/sdk/b;-><init>(Lcom/heytap/openid/sdk/c;)V

    iput-object v0, p0, Lcom/heytap/openid/sdk/c;->e:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public synchronized native declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native a(Landroid/content/Context;)Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public final native b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
