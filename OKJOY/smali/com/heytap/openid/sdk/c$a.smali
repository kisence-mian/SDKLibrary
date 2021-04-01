.class public Lcom/heytap/openid/sdk/c$a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/openid/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/heytap/openid/sdk/c;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    new-instance v0, Lcom/heytap/openid/sdk/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/heytap/openid/sdk/c;-><init>(Lcom/heytap/openid/sdk/b;)V

    sput-object v0, Lcom/heytap/openid/sdk/c$a;->a:Lcom/heytap/openid/sdk/c;

    return-void
.end method
