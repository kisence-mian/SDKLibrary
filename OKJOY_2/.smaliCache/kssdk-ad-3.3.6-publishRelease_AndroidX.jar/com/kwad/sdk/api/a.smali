.class public Lcom/kwad/sdk/api/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/kwad/sdk/api/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x2

    :goto_b
    sput v0, Lcom/kwad/sdk/api/a;->a:I

    return-void
.end method
