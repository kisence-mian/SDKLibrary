.class final Landroidx/multidex/MultiDex$V14;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/multidex/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V14"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/multidex/MultiDex$V14$JBMR2ElementConstructor;,
        Landroidx/multidex/MultiDex$V14$JBMR11ElementConstructor;,
        Landroidx/multidex/MultiDex$V14$ICSElementConstructor;,
        Landroidx/multidex/MultiDex$V14$ElementConstructor;
    }
.end annotation


# static fields
.field private static final EXTRACTED_SUFFIX_LENGTH:I


# instance fields
.field private final elementConstructor:Landroidx/multidex/MultiDex$V14$ElementConstructor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 643
    nop

    .line 644
    const-string v0, ".zip"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroidx/multidex/MultiDex$V14;->EXTRACTED_SUFFIX_LENGTH:I

    .line 643
    return-void
.end method

.method private constructor <init>()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    const-string v0, "dalvik.system.DexPathList$Element"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 675
    .local v0, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_9
    new-instance v1, Landroidx/multidex/MultiDex$V14$ICSElementConstructor;

    invoke-direct {v1, v0}, Landroidx/multidex/MultiDex$V14$ICSElementConstructor;-><init>(Ljava/lang/Class;)V
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_e} :catch_f

    .line 682
    .local v1, "constructor":Landroidx/multidex/MultiDex$V14$ElementConstructor;
    goto :goto_1e

    .line 676
    .end local v1    # "constructor":Landroidx/multidex/MultiDex$V14$ElementConstructor;
    :catch_f
    move-exception v1

    .line 678
    .local v1, "e1":Ljava/lang/NoSuchMethodException;
    :try_start_10
    new-instance v2, Landroidx/multidex/MultiDex$V14$JBMR11ElementConstructor;

    invoke-direct {v2, v0}, Landroidx/multidex/MultiDex$V14$JBMR11ElementConstructor;-><init>(Ljava/lang/Class;)V
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_15} :catch_17

    .line 681
    .local v2, "constructor":Landroidx/multidex/MultiDex$V14$ElementConstructor;
    move-object v1, v2

    goto :goto_1e

    .line 679
    .end local v2    # "constructor":Landroidx/multidex/MultiDex$V14$ElementConstructor;
    :catch_17
    move-exception v2

    .line 680
    .local v2, "e2":Ljava/lang/NoSuchMethodException;
    new-instance v3, Landroidx/multidex/MultiDex$V14$JBMR2ElementConstructor;

    invoke-direct {v3, v0}, Landroidx/multidex/MultiDex$V14$JBMR2ElementConstructor;-><init>(Ljava/lang/Class;)V

    move-object v1, v3

    .line 683
    .end local v2    # "e2":Ljava/lang/NoSuchMethodException;
    .local v1, "constructor":Landroidx/multidex/MultiDex$V14$ElementConstructor;
    :goto_1e
    iput-object v1, p0, Landroidx/multidex/MultiDex$V14;->elementConstructor:Landroidx/multidex/MultiDex$V14$ElementConstructor;

    .line 684
    return-void
.end method

.method static install(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .registers 8
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 658
    .local p1, "additionalClassPathEntries":Ljava/util/List;, "Ljava/util/List<+Ljava/io/File;>;"
    const-string v0, "pathList"

    # invokes: Landroidx/multidex/MultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    invoke-static {p0, v0}, Landroidx/multidex/MultiDex;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 659
    .local v0, "pathListField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 660
    .local v1, "dexPathList":Ljava/lang/Object;
    new-instance v2, Landroidx/multidex/MultiDex$V14;

    invoke-direct {v2}, Landroidx/multidex/MultiDex$V14;-><init>()V

    invoke-direct {v2, p1}, Landroidx/multidex/MultiDex$V14;->makeDexElements(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v2

    .line 662
    .local v2, "elements":[Ljava/lang/Object;
    :try_start_13
    const-string v3, "dexElements"

    # invokes: Landroidx/multidex/MultiDex;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v1, v3, v2}, Landroidx/multidex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_18} :catch_19

    .line 668
    goto :goto_26

    .line 663
    :catch_19
    move-exception v3

    .line 666
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    const-string v4, "MultiDex"

    const-string v5, "Failed find field \'dexElements\' attempting \'pathElements\'"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    const-string v4, "pathElements"

    # invokes: Landroidx/multidex/MultiDex;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v1, v4, v2}, Landroidx/multidex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :goto_26
    return-void
.end method

.method private makeDexElements(Ljava/util/List;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 695
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<+Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 696
    .local v0, "elements":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 697
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 698
    .local v2, "file":Ljava/io/File;
    iget-object v3, p0, Landroidx/multidex/MultiDex$V14;->elementConstructor:Landroidx/multidex/MultiDex$V14$ElementConstructor;

    .line 700
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroidx/multidex/MultiDex$V14;->optimizedPathFor(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v4

    .line 698
    invoke-interface {v3, v2, v4}, Landroidx/multidex/MultiDex$V14$ElementConstructor;->newInstance(Ljava/io/File;Ldalvik/system/DexFile;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 696
    .end local v2    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 702
    .end local v1    # "i":I
    :cond_28
    return-object v0
.end method

.method private static optimizedPathFor(Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .param p0, "path"    # Ljava/io/File;

    .line 713
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 714
    .local v0, "optimizedDirectory":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Landroidx/multidex/MultiDex$V14;->EXTRACTED_SUFFIX_LENGTH:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, "optimizedFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 719
    .local v3, "result":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
