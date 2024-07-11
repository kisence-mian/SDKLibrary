.class public final enum Lcom/tapjoy/internal/z;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/z;

.field public static final enum b:Lcom/tapjoy/internal/z;

.field public static final enum c:Lcom/tapjoy/internal/z;

.field public static final enum d:Lcom/tapjoy/internal/z;

.field public static final enum e:Lcom/tapjoy/internal/z;

.field public static final enum f:Lcom/tapjoy/internal/z;

.field public static final enum g:Lcom/tapjoy/internal/z;

.field public static final enum h:Lcom/tapjoy/internal/z;

.field public static final enum i:Lcom/tapjoy/internal/z;

.field public static final enum j:Lcom/tapjoy/internal/z;

.field public static final enum k:Lcom/tapjoy/internal/z;

.field public static final enum l:Lcom/tapjoy/internal/z;

.field public static final enum m:Lcom/tapjoy/internal/z;

.field public static final enum n:Lcom/tapjoy/internal/z;

.field public static final enum o:Lcom/tapjoy/internal/z;

.field public static final enum p:Lcom/tapjoy/internal/z;

.field private static final synthetic s:[Lcom/tapjoy/internal/z;


# instance fields
.field private final q:Lcom/tapjoy/internal/z;

.field private final r:Lcom/tapjoy/internal/z;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 11
    new-instance v0, Lcom/tapjoy/internal/z;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/z;->a:Lcom/tapjoy/internal/z;

    .line 12
    new-instance v1, Lcom/tapjoy/internal/z;

    const-string v3, "PORTRAIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tapjoy/internal/z;->b:Lcom/tapjoy/internal/z;

    .line 13
    new-instance v3, Lcom/tapjoy/internal/z;

    const-string v5, "LANDSCAPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tapjoy/internal/z;->c:Lcom/tapjoy/internal/z;

    .line 14
    new-instance v5, Lcom/tapjoy/internal/z;

    const-string v7, "SQUARE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tapjoy/internal/z;->d:Lcom/tapjoy/internal/z;

    .line 16
    new-instance v7, Lcom/tapjoy/internal/z;

    const-string v9, "NATURAL_PORTRAIT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v1}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/z;)V

    sput-object v7, Lcom/tapjoy/internal/z;->e:Lcom/tapjoy/internal/z;

    .line 17
    new-instance v9, Lcom/tapjoy/internal/z;

    const-string v11, "RIGHT_LANDSCAPE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v3, v7}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/z;Lcom/tapjoy/internal/z;)V

    sput-object v9, Lcom/tapjoy/internal/z;->f:Lcom/tapjoy/internal/z;

    .line 18
    new-instance v11, Lcom/tapjoy/internal/z;

    const-string v13, "REVERSE_PORTRAIT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v1, v7}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/z;Lcom/tapjoy/internal/z;)V

    sput-object v11, Lcom/tapjoy/internal/z;->g:Lcom/tapjoy/internal/z;

    .line 19
    new-instance v13, Lcom/tapjoy/internal/z;

    const-string v15, "LEFT_LANDSCAPE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v3, v7}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/z;Lcom/tapjoy/internal/z;)V

    sput-object v13, Lcom/tapjoy/internal/z;->h:Lcom/tapjoy/internal/z;

    .line 21
    new-instance v15, Lcom/tapjoy/internal/z;

    const-string v14, "NATURAL_LANDSCAPE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v3}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/z;)V

    sput-object v15, Lcom/tapjoy/internal/z;->i:Lcom/tapjoy/internal/z;

    .line 22
    new-instance v14, Lcom/tapjoy/internal/z;

    const-string v12, "RIGHT_PORTRAIT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v1, v15}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/z;Lcom/tapjoy/internal/z;)V

    sput-object v14, Lcom/tapjoy/internal/z;->j:Lcom/tapjoy/internal/z;

    .line 23
    new-instance v12, Lcom/tapjoy/internal/z;

    const-string v10, "REVERSE_LANDSCAPE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v3, v15}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/z;Lcom/tapjoy/internal/z;)V

    sput-object v12, Lcom/tapjoy/internal/z;->k:Lcom/tapjoy/internal/z;

    .line 24
    new-instance v10, Lcom/tapjoy/internal/z;

    const-string v8, "LEFT_PORTRAIT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v1, v15}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/z;Lcom/tapjoy/internal/z;)V

    sput-object v10, Lcom/tapjoy/internal/z;->l:Lcom/tapjoy/internal/z;

    .line 26
    new-instance v8, Lcom/tapjoy/internal/z;

    const-string v6, "NATURAL_SQUARE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v5}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/z;)V

    sput-object v8, Lcom/tapjoy/internal/z;->m:Lcom/tapjoy/internal/z;

    .line 27
    new-instance v6, Lcom/tapjoy/internal/z;

    const-string v4, "RIGHT_SQUARE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v5, v8}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/z;Lcom/tapjoy/internal/z;)V

    sput-object v6, Lcom/tapjoy/internal/z;->n:Lcom/tapjoy/internal/z;

    .line 28
    new-instance v4, Lcom/tapjoy/internal/z;

    const-string v2, "REVERSE_SQUARE"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v5, v8}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/z;Lcom/tapjoy/internal/z;)V

    sput-object v4, Lcom/tapjoy/internal/z;->o:Lcom/tapjoy/internal/z;

    .line 29
    new-instance v2, Lcom/tapjoy/internal/z;

    const-string v6, "LEFT_SQUARE"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v5, v8}, Lcom/tapjoy/internal/z;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/z;Lcom/tapjoy/internal/z;)V

    sput-object v2, Lcom/tapjoy/internal/z;->p:Lcom/tapjoy/internal/z;

    .line 10
    const/16 v6, 0x10

    new-array v6, v6, [Lcom/tapjoy/internal/z;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lcom/tapjoy/internal/z;->s:[Lcom/tapjoy/internal/z;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p0, p0, Lcom/tapjoy/internal/z;->q:Lcom/tapjoy/internal/z;

    .line 36
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/z;->r:Lcom/tapjoy/internal/z;

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/tapjoy/internal/z;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/z;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/tapjoy/internal/z;->q:Lcom/tapjoy/internal/z;

    .line 41
    iput-object p0, p0, Lcom/tapjoy/internal/z;->r:Lcom/tapjoy/internal/z;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/tapjoy/internal/z;Lcom/tapjoy/internal/z;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/z;",
            "Lcom/tapjoy/internal/z;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/tapjoy/internal/z;->q:Lcom/tapjoy/internal/z;

    .line 46
    iput-object p4, p0, Lcom/tapjoy/internal/z;->r:Lcom/tapjoy/internal/z;

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tapjoy/internal/z;
    .registers 5

    .line 84
    nop

    .line 85
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 89
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 90
    nop

    .line 1018
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_21

    .line 1019
    invoke-virtual {p0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_2d

    .line 1021
    :cond_21
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 1022
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    iput p0, v1, Landroid/graphics/Point;->y:I

    .line 91
    :goto_2d
    iget p0, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-ge p0, v2, :cond_44

    .line 92
    and-int/lit8 p0, v0, 0x3

    packed-switch p0, :pswitch_data_6c

    .line 95
    sget-object p0, Lcom/tapjoy/internal/z;->e:Lcom/tapjoy/internal/z;

    return-object p0

    .line 101
    :pswitch_3b
    sget-object p0, Lcom/tapjoy/internal/z;->l:Lcom/tapjoy/internal/z;

    return-object p0

    .line 99
    :pswitch_3e
    sget-object p0, Lcom/tapjoy/internal/z;->g:Lcom/tapjoy/internal/z;

    return-object p0

    .line 97
    :pswitch_41
    sget-object p0, Lcom/tapjoy/internal/z;->j:Lcom/tapjoy/internal/z;

    return-object p0

    .line 103
    :cond_44
    iget p0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le p0, v1, :cond_5b

    .line 104
    and-int/lit8 p0, v0, 0x3

    packed-switch p0, :pswitch_data_76

    .line 107
    sget-object p0, Lcom/tapjoy/internal/z;->i:Lcom/tapjoy/internal/z;

    return-object p0

    .line 113
    :pswitch_52
    sget-object p0, Lcom/tapjoy/internal/z;->h:Lcom/tapjoy/internal/z;

    return-object p0

    .line 111
    :pswitch_55
    sget-object p0, Lcom/tapjoy/internal/z;->k:Lcom/tapjoy/internal/z;

    return-object p0

    .line 109
    :pswitch_58
    sget-object p0, Lcom/tapjoy/internal/z;->f:Lcom/tapjoy/internal/z;

    return-object p0

    .line 116
    :cond_5b
    and-int/lit8 p0, v0, 0x3

    packed-switch p0, :pswitch_data_80

    .line 119
    sget-object p0, Lcom/tapjoy/internal/z;->m:Lcom/tapjoy/internal/z;

    return-object p0

    .line 125
    :pswitch_63
    sget-object p0, Lcom/tapjoy/internal/z;->p:Lcom/tapjoy/internal/z;

    return-object p0

    .line 123
    :pswitch_66
    sget-object p0, Lcom/tapjoy/internal/z;->o:Lcom/tapjoy/internal/z;

    return-object p0

    .line 121
    :pswitch_69
    sget-object p0, Lcom/tapjoy/internal/z;->n:Lcom/tapjoy/internal/z;

    return-object p0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_58
        :pswitch_55
        :pswitch_52
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_69
        :pswitch_66
        :pswitch_63
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Lcom/tapjoy/internal/z;
    .registers 1

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch p0, :pswitch_data_16

    .line 137
    sget-object p0, Lcom/tapjoy/internal/z;->a:Lcom/tapjoy/internal/z;

    return-object p0

    .line 135
    :pswitch_10
    sget-object p0, Lcom/tapjoy/internal/z;->c:Lcom/tapjoy/internal/z;

    return-object p0

    .line 133
    :pswitch_13
    sget-object p0, Lcom/tapjoy/internal/z;->b:Lcom/tapjoy/internal/z;

    return-object p0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/z;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lcom/tapjoy/internal/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/z;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/z;
    .registers 1

    .line 10
    sget-object v0, Lcom/tapjoy/internal/z;->s:[Lcom/tapjoy/internal/z;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/z;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .line 50
    sget-object v0, Lcom/tapjoy/internal/z;->b:Lcom/tapjoy/internal/z;

    if-eq p0, v0, :cond_b

    iget-object v1, p0, Lcom/tapjoy/internal/z;->q:Lcom/tapjoy/internal/z;

    if-ne v1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .registers 3

    .line 54
    sget-object v0, Lcom/tapjoy/internal/z;->c:Lcom/tapjoy/internal/z;

    if-eq p0, v0, :cond_b

    iget-object v1, p0, Lcom/tapjoy/internal/z;->q:Lcom/tapjoy/internal/z;

    if-ne v1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/tapjoy/internal/z;->r:Lcom/tapjoy/internal/z;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/tapjoy/internal/z;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/z;->r:Lcom/tapjoy/internal/z;

    invoke-virtual {v1}, Lcom/tapjoy/internal/z;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
