.class public Lcom/heytap/openid/sdk/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/openid/sdk/c$a;
    }
.end annotation


# instance fields
.field public a:Lcom/heytap/openid/a;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/Object;

.field public e:Landroid/content/ServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/heytap/openid/sdk/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/heytap/openid/sdk/c;->a:Lcom/heytap/openid/a;

    iput-object p1, p0, Lcom/heytap/openid/sdk/c;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/heytap/openid/sdk/c;->c:Ljava/lang/String;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/openid/sdk/c;->d:Ljava/lang/Object;

    new-instance p1, Lcom/heytap/openid/sdk/b;

    invoke-direct {p1, p0}, Lcom/heytap/openid/sdk/b;-><init>(Lcom/heytap/openid/sdk/c;)V

    iput-object p1, p0, Lcom/heytap/openid/sdk/c;->e:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public synchronized native a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native a(Landroid/content/Context;)Z
.end method

.method public final native b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method
