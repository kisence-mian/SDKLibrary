.class public Lcom/heytap/openid/a$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/heytap/openid/a;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/openid/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/IBinder;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/openid/a$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public native a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native asBinder()Landroid/os/IBinder;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
