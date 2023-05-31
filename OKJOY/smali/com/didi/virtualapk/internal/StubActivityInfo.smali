.class Lcom/didi/virtualapk/internal/StubActivityInfo;
.super Ljava/lang/Object;
.source "StubActivityInfo.java"


# static fields
.field public static final MAX_COUNT_SINGLEINSTANCE:I = 0x8

.field public static final MAX_COUNT_SINGLETASK:I = 0x8

.field public static final MAX_COUNT_SINGLETOP:I = 0x8

.field public static final MAX_COUNT_STANDARD:I = 0x1

.field public static final STUB_ACTIVITY_SINGLEINSTANCE:Ljava/lang/String; = "%s.D$%d"

.field public static final STUB_ACTIVITY_SINGLETASK:Ljava/lang/String; = "%s.C$%d"

.field public static final STUB_ACTIVITY_SINGLETOP:Ljava/lang/String; = "%s.B$%d"

.field public static final STUB_ACTIVITY_STANDARD:Ljava/lang/String; = "%s.A$%d"

.field public static final corePackage:Ljava/lang/String; = "com.didi.virtualapk.core"


# instance fields
.field private mCachedStubActivity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usedSingleInstanceStubActivity:I

.field public usedSingleTaskStubActivity:I

.field public usedSingleTopStubActivity:I

.field public final usedStandardStubActivity:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedStandardStubActivity:I

    .line 42
    iput v1, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTopStubActivity:I

    .line 43
    iput v1, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTaskStubActivity:I

    .line 44
    iput v1, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleInstanceStubActivity:I

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->mCachedStubActivity:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getStubActivity(Ljava/lang/String;ILandroid/content/res/Resources$Theme;)Ljava/lang/String;
    .registers 14
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "launchMode"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 49
    iget-object v4, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->mCachedStubActivity:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    .local v1, "stubActivity":Ljava/lang/String;
    if-eqz v1, :cond_f

    move-object v2, v1

    .line 92
    .end local v1    # "stubActivity":Ljava/lang/String;
    .local v2, "stubActivity":Ljava/lang/String;
    :goto_e
    return-object v2

    .line 54
    .end local v2    # "stubActivity":Ljava/lang/String;
    .restart local v1    # "stubActivity":Ljava/lang/String;
    :cond_f
    new-array v4, v9, [I

    fill-array-data v4, :array_d2

    invoke-virtual {p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 59
    .local v3, "windowIsTranslucent":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    const-string v4, "VA.StubActivityInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStubActivity, is transparent theme ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v4, "%s.A$%d"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "com.didi.virtualapk.core"

    aput-object v6, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 64
    packed-switch p2, :pswitch_data_da

    .line 91
    :cond_4c
    :goto_4c
    iget-object v4, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->mCachedStubActivity:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 92
    .end local v1    # "stubActivity":Ljava/lang/String;
    .restart local v2    # "stubActivity":Ljava/lang/String;
    goto :goto_e

    .line 66
    .end local v2    # "stubActivity":Ljava/lang/String;
    .restart local v1    # "stubActivity":Ljava/lang/String;
    :pswitch_53
    const-string v4, "%s.A$%d"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "com.didi.virtualapk.core"

    aput-object v6, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 67
    if-eqz v3, :cond_4c

    .line 68
    const-string v4, "%s.A$%d"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "com.didi.virtualapk.core"

    aput-object v6, v5, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4c

    .line 73
    :pswitch_7a
    iget v4, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTopStubActivity:I

    rem-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTopStubActivity:I

    .line 74
    const-string v4, "%s.B$%d"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "com.didi.virtualapk.core"

    aput-object v6, v5, v7

    iget v6, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTopStubActivity:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 75
    goto :goto_4c

    .line 78
    :pswitch_97
    iget v4, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTaskStubActivity:I

    rem-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTaskStubActivity:I

    .line 79
    const-string v4, "%s.C$%d"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "com.didi.virtualapk.core"

    aput-object v6, v5, v7

    iget v6, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTaskStubActivity:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    goto :goto_4c

    .line 83
    :pswitch_b4
    iget v4, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleInstanceStubActivity:I

    rem-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleInstanceStubActivity:I

    .line 84
    const-string v4, "%s.D$%d"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "com.didi.virtualapk.core"

    aput-object v6, v5, v7

    iget v6, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleInstanceStubActivity:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 85
    goto/16 :goto_4c

    .line 54
    :array_d2
    .array-data 4
        0x1010058
        0x1010054
    .end array-data

    .line 64
    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_53
        :pswitch_7a
        :pswitch_97
        :pswitch_b4
    .end packed-switch
.end method
