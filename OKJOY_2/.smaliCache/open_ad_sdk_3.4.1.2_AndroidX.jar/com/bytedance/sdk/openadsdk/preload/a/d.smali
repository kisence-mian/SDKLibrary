.class public abstract enum Lcom/bytedance/sdk/openadsdk/preload/a/d;
.super Ljava/lang/Enum;
.source "FieldNamingPolicy.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/preload/a/d;",
        ">;",
        "Lcom/bytedance/sdk/openadsdk/preload/a/e;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/preload/a/d;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/preload/a/d;

.field public static final enum c:Lcom/bytedance/sdk/openadsdk/preload/a/d;

.field public static final enum d:Lcom/bytedance/sdk/openadsdk/preload/a/d;

.field public static final enum e:Lcom/bytedance/sdk/openadsdk/preload/a/d;

.field public static final enum f:Lcom/bytedance/sdk/openadsdk/preload/a/d;

.field private static final synthetic g:[Lcom/bytedance/sdk/openadsdk/preload/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 37
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/d$1;

    const-string v1, "IDENTITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/d;

    .line 53
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/a/d$2;

    const-string v3, "UPPER_CAMEL_CASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/preload/a/d$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/d;

    .line 72
    new-instance v3, Lcom/bytedance/sdk/openadsdk/preload/a/d$3;

    const-string v5, "UPPER_CAMEL_CASE_WITH_SPACES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/preload/a/d$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/d;

    .line 90
    new-instance v5, Lcom/bytedance/sdk/openadsdk/preload/a/d$4;

    const-string v7, "LOWER_CASE_WITH_UNDERSCORES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/bytedance/sdk/openadsdk/preload/a/d$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/bytedance/sdk/openadsdk/preload/a/d;->d:Lcom/bytedance/sdk/openadsdk/preload/a/d;

    .line 113
    new-instance v7, Lcom/bytedance/sdk/openadsdk/preload/a/d$5;

    const-string v9, "LOWER_CASE_WITH_DASHES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/bytedance/sdk/openadsdk/preload/a/d$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/bytedance/sdk/openadsdk/preload/a/d;->e:Lcom/bytedance/sdk/openadsdk/preload/a/d;

    .line 136
    new-instance v9, Lcom/bytedance/sdk/openadsdk/preload/a/d$6;

    const-string v11, "LOWER_CASE_WITH_DOTS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/bytedance/sdk/openadsdk/preload/a/d$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/bytedance/sdk/openadsdk/preload/a/d;->f:Lcom/bytedance/sdk/openadsdk/preload/a/d;

    .line 31
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/bytedance/sdk/openadsdk/preload/a/d;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/bytedance/sdk/openadsdk/preload/a/d;->g:[Lcom/bytedance/sdk/openadsdk/preload/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/preload/a/d$1;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 162
    nop

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    .line 164
    :goto_9
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_18

    if-ge v3, v0, :cond_18

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 166
    :cond_18
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 167
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 168
    return-object p0

    .line 171
    :cond_23
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 172
    if-nez v3, :cond_3f

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 176
    :cond_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_25

    .line 149
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 150
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_1f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 155
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d;
    .registers 2

    .line 31
    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/preload/a/d;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/preload/a/d;
    .registers 1

    .line 31
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d;->g:[Lcom/bytedance/sdk/openadsdk/preload/a/d;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/preload/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/preload/a/d;

    return-object v0
.end method
