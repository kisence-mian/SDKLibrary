.class public final enum Lcom/bytedance/tea/crash/c;
.super Ljava/lang/Enum;
.source "CrashType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/tea/crash/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/tea/crash/c;

.field public static final enum b:Lcom/bytedance/tea/crash/c;

.field public static final enum c:Lcom/bytedance/tea/crash/c;

.field public static final enum d:Lcom/bytedance/tea/crash/c;

.field public static final enum e:Lcom/bytedance/tea/crash/c;

.field public static final enum f:Lcom/bytedance/tea/crash/c;

.field public static final enum g:Lcom/bytedance/tea/crash/c;

.field public static final enum h:Lcom/bytedance/tea/crash/c;

.field public static final enum i:Lcom/bytedance/tea/crash/c;

.field private static final synthetic k:[Lcom/bytedance/tea/crash/c;


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 10
    new-instance v0, Lcom/bytedance/tea/crash/c;

    const-string v1, "LAUNCH"

    const/4 v2, 0x0

    const-string v3, "launch"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/c;->a:Lcom/bytedance/tea/crash/c;

    .line 14
    new-instance v1, Lcom/bytedance/tea/crash/c;

    const-string v3, "JAVA"

    const/4 v4, 0x1

    const-string v5, "java"

    invoke-direct {v1, v3, v4, v5}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/bytedance/tea/crash/c;->b:Lcom/bytedance/tea/crash/c;

    .line 18
    new-instance v3, Lcom/bytedance/tea/crash/c;

    const-string v5, "NATIVE"

    const/4 v6, 0x2

    const-string v7, "native"

    invoke-direct {v3, v5, v6, v7}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/bytedance/tea/crash/c;->c:Lcom/bytedance/tea/crash/c;

    .line 22
    new-instance v5, Lcom/bytedance/tea/crash/c;

    const-string v7, "ANR"

    const/4 v8, 0x3

    const-string v9, "anr"

    invoke-direct {v5, v7, v8, v9}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/bytedance/tea/crash/c;->d:Lcom/bytedance/tea/crash/c;

    .line 26
    new-instance v7, Lcom/bytedance/tea/crash/c;

    const-string v9, "BLOCK"

    const/4 v10, 0x4

    const-string v11, "block"

    invoke-direct {v7, v9, v10, v11}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/bytedance/tea/crash/c;->e:Lcom/bytedance/tea/crash/c;

    .line 30
    new-instance v9, Lcom/bytedance/tea/crash/c;

    const-string v11, "ENSURE"

    const/4 v12, 0x5

    const-string v13, "ensure"

    invoke-direct {v9, v11, v12, v13}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/bytedance/tea/crash/c;->f:Lcom/bytedance/tea/crash/c;

    .line 34
    new-instance v11, Lcom/bytedance/tea/crash/c;

    const-string v13, "DART"

    const/4 v14, 0x6

    const-string v15, "dart"

    invoke-direct {v11, v13, v14, v15}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/bytedance/tea/crash/c;->g:Lcom/bytedance/tea/crash/c;

    .line 38
    new-instance v13, Lcom/bytedance/tea/crash/c;

    const-string v15, "CUSTOM_JAVA"

    const/4 v14, 0x7

    const-string v12, "custom_java"

    invoke-direct {v13, v15, v14, v12}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/bytedance/tea/crash/c;->h:Lcom/bytedance/tea/crash/c;

    .line 42
    new-instance v12, Lcom/bytedance/tea/crash/c;

    const-string v15, "ALL"

    const/16 v14, 0x8

    const-string v10, "all"

    invoke-direct {v12, v15, v14, v10}, Lcom/bytedance/tea/crash/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/bytedance/tea/crash/c;->i:Lcom/bytedance/tea/crash/c;

    .line 6
    const/16 v10, 0x9

    new-array v10, v10, [Lcom/bytedance/tea/crash/c;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lcom/bytedance/tea/crash/c;->k:[Lcom/bytedance/tea/crash/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/bytedance/tea/crash/c;->j:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/tea/crash/c;
    .registers 2

    .line 6
    const-class v0, Lcom/bytedance/tea/crash/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/tea/crash/c;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/tea/crash/c;
    .registers 1

    .line 6
    sget-object v0, Lcom/bytedance/tea/crash/c;->k:[Lcom/bytedance/tea/crash/c;

    invoke-virtual {v0}, [Lcom/bytedance/tea/crash/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/tea/crash/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/bytedance/tea/crash/c;->j:Ljava/lang/String;

    return-object v0
.end method
