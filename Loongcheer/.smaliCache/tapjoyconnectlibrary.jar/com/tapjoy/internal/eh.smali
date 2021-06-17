.class public final enum Lcom/tapjoy/internal/eh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/eh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/eh;

.field public static final enum b:Lcom/tapjoy/internal/eh;

.field public static final enum c:Lcom/tapjoy/internal/eh;

.field public static final enum d:Lcom/tapjoy/internal/eh;

.field private static final synthetic f:[Lcom/tapjoy/internal/eh;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 22
    new-instance v0, Lcom/tapjoy/internal/eh;

    const-string v1, "VARINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tapjoy/internal/eh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/eh;->a:Lcom/tapjoy/internal/eh;

    new-instance v1, Lcom/tapjoy/internal/eh;

    const-string v3, "FIXED64"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tapjoy/internal/eh;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tapjoy/internal/eh;->b:Lcom/tapjoy/internal/eh;

    new-instance v3, Lcom/tapjoy/internal/eh;

    const-string v5, "LENGTH_DELIMITED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tapjoy/internal/eh;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tapjoy/internal/eh;->c:Lcom/tapjoy/internal/eh;

    new-instance v5, Lcom/tapjoy/internal/eh;

    const-string v7, "FIXED32"

    const/4 v8, 0x3

    const/4 v9, 0x5

    invoke-direct {v5, v7, v8, v9}, Lcom/tapjoy/internal/eh;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tapjoy/internal/eh;->d:Lcom/tapjoy/internal/eh;

    .line 21
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/tapjoy/internal/eh;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/tapjoy/internal/eh;->f:[Lcom/tapjoy/internal/eh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/tapjoy/internal/eh;->e:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/eh;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/tapjoy/internal/eh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/eh;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/eh;
    .registers 1

    .line 21
    sget-object v0, Lcom/tapjoy/internal/eh;->f:[Lcom/tapjoy/internal/eh;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/eh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/eh;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/ek;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tapjoy/internal/ek<",
            "*>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/tapjoy/internal/eh$1;->a:[I

    invoke-virtual {p0}, Lcom/tapjoy/internal/eh;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 56
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :pswitch_11
    sget-object v0, Lcom/tapjoy/internal/ek;->q:Lcom/tapjoy/internal/ek;

    return-object v0

    .line 52
    :pswitch_14
    sget-object v0, Lcom/tapjoy/internal/ek;->l:Lcom/tapjoy/internal/ek;

    return-object v0

    .line 50
    :pswitch_17
    sget-object v0, Lcom/tapjoy/internal/ek;->g:Lcom/tapjoy/internal/ek;

    return-object v0

    .line 48
    :pswitch_1a
    sget-object v0, Lcom/tapjoy/internal/ek;->j:Lcom/tapjoy/internal/ek;

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method
