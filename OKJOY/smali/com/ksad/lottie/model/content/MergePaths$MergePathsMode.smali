.class public final enum Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/model/content/MergePaths;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MergePathsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum Add:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum ExcludeIntersections:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum Intersect:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum Merge:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum Subtract:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    const-string v1, "Merge"

    invoke-direct {v0, v1, v2}, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->Merge:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    const-string v1, "Add"

    invoke-direct {v0, v1, v3}, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->Add:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    const-string v1, "Subtract"

    invoke-direct {v0, v1, v4}, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->Subtract:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    const-string v1, "Intersect"

    invoke-direct {v0, v1, v5}, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->Intersect:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    const-string v1, "ExcludeIntersections"

    invoke-direct {v0, v1, v6}, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->ExcludeIntersections:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    sget-object v1, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->Merge:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->Add:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->Subtract:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->Intersect:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->ExcludeIntersections:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->$VALUES:[Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forId(I)Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;
    .registers 2

    packed-switch p0, :pswitch_data_16

    sget-object v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->Merge:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->ExcludeIntersections:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->Intersect:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_5

    :pswitch_c
    sget-object v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->Subtract:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_5

    :pswitch_f
    sget-object v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->Add:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_5

    :pswitch_12
    sget-object v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->Merge:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_5

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;
    .registers 2

    const-class v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    return-object v0
.end method

.method public static values()[Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;
    .registers 1

    sget-object v0, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->$VALUES:[Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    invoke-virtual {v0}, [Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    return-object v0
.end method
