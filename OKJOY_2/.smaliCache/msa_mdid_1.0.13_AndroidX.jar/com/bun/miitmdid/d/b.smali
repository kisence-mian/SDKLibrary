.class public Lcom/bun/miitmdid/d/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "#PART#"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/bun/miitmdid/d/b;->a:[B

    return-void
.end method

.method public static native a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native a([B[B)[B
.end method

.method public static native b([B[B)[B
.end method
