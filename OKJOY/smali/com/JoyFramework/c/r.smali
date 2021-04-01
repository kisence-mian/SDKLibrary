.class synthetic Lcom/JoyFramework/c/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1766
    invoke-static {}, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->values()[Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/JoyFramework/c/r;->a:[I

    :try_start_9
    sget-object v0, Lcom/JoyFramework/c/r;->a:[I

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Other:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-virtual {v1}, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/JoyFramework/c/r;->a:[I

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Banner:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-virtual {v1}, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/JoyFramework/c/r;->a:[I

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Insert:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-virtual {v1}, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/JoyFramework/c/r;->a:[I

    sget-object v1, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-virtual {v1}, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35

    :catch_38
    move-exception v0

    goto :goto_2a

    :catch_3a
    move-exception v0

    goto :goto_1f

    :catch_3c
    move-exception v0

    goto :goto_14
.end method
