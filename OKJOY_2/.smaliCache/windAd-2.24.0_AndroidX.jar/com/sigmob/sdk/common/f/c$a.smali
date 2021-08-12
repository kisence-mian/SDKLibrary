.class public final enum Lcom/sigmob/sdk/common/f/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/common/f/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/common/f/c$a;

.field public static final enum b:Lcom/sigmob/sdk/common/f/c$a;

.field public static final enum c:Lcom/sigmob/sdk/common/f/c$a;

.field public static final enum d:Lcom/sigmob/sdk/common/f/c$a;

.field public static final enum e:Lcom/sigmob/sdk/common/f/c$a;

.field public static final enum f:Lcom/sigmob/sdk/common/f/c$a;

.field public static final enum g:Lcom/sigmob/sdk/common/f/c$a;

.field public static final enum h:Lcom/sigmob/sdk/common/f/c$a;

.field private static final synthetic j:[Lcom/sigmob/sdk/common/f/c$a;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/sigmob/sdk/common/f/c$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sigmob/sdk/common/f/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/common/f/c$a;->a:Lcom/sigmob/sdk/common/f/c$a;

    new-instance v1, Lcom/sigmob/sdk/common/f/c$a;

    const-string v3, "ETHERNET"

    const/4 v4, 0x1

    const/16 v5, 0x65

    invoke-direct {v1, v3, v4, v5}, Lcom/sigmob/sdk/common/f/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/sdk/common/f/c$a;->b:Lcom/sigmob/sdk/common/f/c$a;

    new-instance v3, Lcom/sigmob/sdk/common/f/c$a;

    const-string v5, "WIFI"

    const/4 v6, 0x2

    const/16 v7, 0x64

    invoke-direct {v3, v5, v6, v7}, Lcom/sigmob/sdk/common/f/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sigmob/sdk/common/f/c$a;->c:Lcom/sigmob/sdk/common/f/c$a;

    new-instance v5, Lcom/sigmob/sdk/common/f/c$a;

    const-string v7, "MOBILE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/sigmob/sdk/common/f/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sigmob/sdk/common/f/c$a;->d:Lcom/sigmob/sdk/common/f/c$a;

    new-instance v7, Lcom/sigmob/sdk/common/f/c$a;

    const-string v9, "MOBILE_2G"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v6}, Lcom/sigmob/sdk/common/f/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sigmob/sdk/common/f/c$a;->e:Lcom/sigmob/sdk/common/f/c$a;

    new-instance v9, Lcom/sigmob/sdk/common/f/c$a;

    const-string v11, "MOBILE_3G"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v8}, Lcom/sigmob/sdk/common/f/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sigmob/sdk/common/f/c$a;->f:Lcom/sigmob/sdk/common/f/c$a;

    new-instance v11, Lcom/sigmob/sdk/common/f/c$a;

    const-string v13, "MOBILE_4G"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v10}, Lcom/sigmob/sdk/common/f/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sigmob/sdk/common/f/c$a;->g:Lcom/sigmob/sdk/common/f/c$a;

    new-instance v13, Lcom/sigmob/sdk/common/f/c$a;

    const-string v15, "MOBILE_5G"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v12}, Lcom/sigmob/sdk/common/f/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sigmob/sdk/common/f/c$a;->h:Lcom/sigmob/sdk/common/f/c$a;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/sigmob/sdk/common/f/c$a;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/sigmob/sdk/common/f/c$a;->j:[Lcom/sigmob/sdk/common/f/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sigmob/sdk/common/f/c$a;->i:I

    return-void
.end method

.method static synthetic a(Landroid/content/Context;I)Lcom/sigmob/sdk/common/f/c$a;
    .registers 2

    invoke-static {p0, p1}, Lcom/sigmob/sdk/common/f/c$a;->b(Landroid/content/Context;I)Lcom/sigmob/sdk/common/f/c$a;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;I)Lcom/sigmob/sdk/common/f/c$a;
    .registers 2

    packed-switch p1, :pswitch_data_12

    :pswitch_3
    sget-object p0, Lcom/sigmob/sdk/common/f/c$a;->a:Lcom/sigmob/sdk/common/f/c$a;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/sigmob/sdk/common/f/c$a;->b:Lcom/sigmob/sdk/common/f/c$a;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/sigmob/sdk/common/f/c$a;->c:Lcom/sigmob/sdk/common/f/c$a;

    return-object p0

    :pswitch_c
    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->l(Landroid/content/Context;)Lcom/sigmob/sdk/common/f/c$a;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/common/f/c$a;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/common/f/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/common/f/c$a;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/common/f/c$a;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/f/c$a;->j:[Lcom/sigmob/sdk/common/f/c$a;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/common/f/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/common/f/c$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/common/f/c$a;->i:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/common/f/c$a;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
