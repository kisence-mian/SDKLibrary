.class final synthetic Lcom/anythink/basead/e/b$3;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 57
    invoke-static {}, Lcom/anythink/basead/e/b$a;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/anythink/basead/e/b$3;->a:[I

    const/4 v1, 0x1

    :try_start_a
    sget v2, Lcom/anythink/basead/e/b$a;->a:I

    sub-int/2addr v2, v1

    aput v1, v0, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move-exception v0

    :goto_11
    :try_start_11
    sget-object v0, Lcom/anythink/basead/e/b$3;->a:[I

    sget v2, Lcom/anythink/basead/e/b$a;->b:I

    sub-int/2addr v2, v1

    const/4 v1, 0x2

    aput v1, v0, v2
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception v0

    return-void
.end method
