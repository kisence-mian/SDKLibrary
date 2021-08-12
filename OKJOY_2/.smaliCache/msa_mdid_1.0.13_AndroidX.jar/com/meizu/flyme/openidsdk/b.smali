.class public Lcom/meizu/flyme/openidsdk/b;
.super Ljava/lang/Object;


# static fields
.field public static volatile g:Lcom/meizu/flyme/openidsdk/b;

.field public static h:Z


# instance fields
.field public a:Lcom/meizu/flyme/openidsdk/OpenId;

.field public b:Lcom/meizu/flyme/openidsdk/OpenId;

.field public c:Lcom/meizu/flyme/openidsdk/OpenId;

.field public d:Lcom/meizu/flyme/openidsdk/OpenId;

.field public e:Ljava/lang/Boolean;

.field public f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/meizu/flyme/openidsdk/OpenId;

    const-string v1, "udid"

    invoke-direct {v0, v1}, Lcom/meizu/flyme/openidsdk/OpenId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/flyme/openidsdk/b;->a:Lcom/meizu/flyme/openidsdk/OpenId;

    new-instance v0, Lcom/meizu/flyme/openidsdk/OpenId;

    const-string v1, "oaid"

    invoke-direct {v0, v1}, Lcom/meizu/flyme/openidsdk/OpenId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/flyme/openidsdk/b;->b:Lcom/meizu/flyme/openidsdk/OpenId;

    new-instance v0, Lcom/meizu/flyme/openidsdk/OpenId;

    const-string v1, "vaid"

    invoke-direct {v0, v1}, Lcom/meizu/flyme/openidsdk/OpenId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/flyme/openidsdk/b;->d:Lcom/meizu/flyme/openidsdk/OpenId;

    new-instance v0, Lcom/meizu/flyme/openidsdk/OpenId;

    const-string v1, "aaid"

    invoke-direct {v0, v1}, Lcom/meizu/flyme/openidsdk/OpenId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/flyme/openidsdk/b;->c:Lcom/meizu/flyme/openidsdk/OpenId;

    return-void
.end method

.method public static native a(Landroid/database/Cursor;)Lcom/meizu/flyme/openidsdk/ValueData;
.end method

.method public static final native a()Lcom/meizu/flyme/openidsdk/b;
.end method

.method public static native b(Ljava/lang/String;)V
.end method


# virtual methods
.method public native a(Ljava/lang/String;)Lcom/meizu/flyme/openidsdk/OpenId;
.end method

.method public final native a(Landroid/content/Context;Lcom/meizu/flyme/openidsdk/OpenId;)Ljava/lang/String;
.end method

.method public final synchronized native a(Landroid/content/Context;)V
.end method

.method public final native a(Landroid/content/Context;Z)Z
.end method
