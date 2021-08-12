.class public final Lcom/google/gson/internal/Excluder;
.super Ljava/lang/Object;
.source "Excluder.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/google/gson/internal/Excluder;

.field private static final IGNORE_VERSIONS:D = -1.0


# instance fields
.field private deserializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private modifiers:I

.field private requireExpose:Z

.field private serializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private serializeInnerClasses:Z

.field private version:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/google/gson/internal/Excluder;

    invoke-direct {v0}, Lcom/google/gson/internal/Excluder;-><init>()V

    sput-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/gson/internal/Excluder;->version:D

    .line 55
    const/16 v0, 0x88

    iput v0, p0, Lcom/google/gson/internal/Excluder;->modifiers:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    return-void
.end method

.method private excludeClassChecks(Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 194
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-wide v0, p0, Lcom/google/gson/internal/Excluder;->version:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    const-class v0, Lcom/google/gson/annotations/Since;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/Since;

    const-class v2, Lcom/google/gson/annotations/Until;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/google/gson/annotations/Until;

    invoke-direct {p0, v0, v2}, Lcom/google/gson/internal/Excluder;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 195
    return v1

    .line 198
    :cond_20
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    if-nez v0, :cond_2b

    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 199
    return v1

    .line 202
    :cond_2b
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 203
    return v1

    .line 206
    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method private excludeClassInStrategy(Ljava/lang/Class;Z)Z
    .registers 7
    .param p2, "serialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    .line 215
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 216
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/ExclusionStrategy;

    .line 217
    .local v2, "exclusionStrategy":Lcom/google/gson/ExclusionStrategy;
    invoke-interface {v2, p1}, Lcom/google/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 218
    const/4 v1, 0x1

    return v1

    .line 220
    .end local v2    # "exclusionStrategy":Lcom/google/gson/ExclusionStrategy;
    :cond_1f
    goto :goto_b

    .line 221
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method private isAnonymousOrLocal(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 225
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 226
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 225
    :goto_17
    return v0
.end method

.method private isInnerClass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 230
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isStatic(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isStatic(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 234
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isValidSince(Lcom/google/gson/annotations/Since;)Z
    .registers 6
    .param p1, "annotation"    # Lcom/google/gson/annotations/Since;

    .line 242
    if-eqz p1, :cond_e

    .line 243
    invoke-interface {p1}, Lcom/google/gson/annotations/Since;->value()D

    move-result-wide v0

    .line 244
    .local v0, "annotationVersion":D
    iget-wide v2, p0, Lcom/google/gson/internal/Excluder;->version:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_e

    .line 245
    const/4 v2, 0x0

    return v2

    .line 248
    .end local v0    # "annotationVersion":D
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method private isValidUntil(Lcom/google/gson/annotations/Until;)Z
    .registers 6
    .param p1, "annotation"    # Lcom/google/gson/annotations/Until;

    .line 252
    if-eqz p1, :cond_e

    .line 253
    invoke-interface {p1}, Lcom/google/gson/annotations/Until;->value()D

    move-result-wide v0

    .line 254
    .local v0, "annotationVersion":D
    iget-wide v2, p0, Lcom/google/gson/internal/Excluder;->version:D

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_e

    .line 255
    const/4 v2, 0x0

    return v2

    .line 258
    .end local v0    # "annotationVersion":D
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method private isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z
    .registers 4
    .param p1, "since"    # Lcom/google/gson/annotations/Since;
    .param p2, "until"    # Lcom/google/gson/annotations/Until;

    .line 238
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isValidSince(Lcom/google/gson/annotations/Since;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p2}, Lcom/google/gson/internal/Excluder;->isValidUntil(Lcom/google/gson/annotations/Until;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method protected clone()Lcom/google/gson/internal/Excluder;
    .registers 3

    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/Excluder;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 64
    :catch_7
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 14
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 112
    .local p2, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 113
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Lcom/google/gson/internal/Excluder;->excludeClassChecks(Ljava/lang/Class;)Z

    move-result v1

    .line 115
    .local v1, "excludeClass":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_15

    invoke-direct {p0, v0, v3}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Ljava/lang/Class;Z)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_15

    :cond_13
    move v4, v2

    goto :goto_16

    :cond_15
    :goto_15
    move v4, v3

    .line 116
    .local v4, "skipSerialize":Z
    :goto_16
    if-nez v1, :cond_1e

    invoke-direct {p0, v0, v2}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Ljava/lang/Class;Z)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v3

    .line 118
    .local v2, "skipDeserialize":Z
    :cond_1f
    if-nez v4, :cond_25

    if-nez v2, :cond_25

    .line 119
    const/4 v3, 0x0

    return-object v3

    .line 122
    :cond_25
    new-instance v3, Lcom/google/gson/internal/Excluder$1;

    move-object v5, v3

    move-object v6, p0

    move v7, v2

    move v8, v4

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/gson/internal/Excluder$1;-><init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)V

    return-object v3
.end method

.method public disableInnerClassSerialization()Lcom/google/gson/internal/Excluder;
    .registers 3

    .line 85
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    .line 86
    .local v0, "result":Lcom/google/gson/internal/Excluder;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    .line 87
    return-object v0
.end method

.method public excludeClass(Ljava/lang/Class;Z)Z
    .registers 4
    .param p2, "serialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    .line 210
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->excludeClassChecks(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 210
    :goto_10
    return v0
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .registers 9
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "serialize"    # Z

    .line 152
    iget v0, p0, Lcom/google/gson/internal/Excluder;->modifiers:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 153
    return v1

    .line 156
    :cond_b
    iget-wide v2, p0, Lcom/google/gson/internal/Excluder;->version:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2a

    const-class v0, Lcom/google/gson/annotations/Since;

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/Since;

    const-class v2, Lcom/google/gson/annotations/Until;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/google/gson/annotations/Until;

    invoke-direct {p0, v0, v2}, Lcom/google/gson/internal/Excluder;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 158
    return v1

    .line 161
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 162
    return v1

    .line 165
    :cond_31
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder;->requireExpose:Z

    if-eqz v0, :cond_4f

    .line 166
    const-class v0, Lcom/google/gson/annotations/Expose;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/Expose;

    .line 167
    .local v0, "annotation":Lcom/google/gson/annotations/Expose;
    if-eqz v0, :cond_4e

    if-eqz p2, :cond_48

    invoke-interface {v0}, Lcom/google/gson/annotations/Expose;->serialize()Z

    move-result v2

    if-nez v2, :cond_4f

    goto :goto_4e

    :cond_48
    invoke-interface {v0}, Lcom/google/gson/annotations/Expose;->deserialize()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 168
    :cond_4e
    :goto_4e
    return v1

    .line 172
    .end local v0    # "annotation":Lcom/google/gson/annotations/Expose;
    :cond_4f
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    if-nez v0, :cond_5e

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 173
    return v1

    .line 176
    :cond_5e
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/internal/Excluder;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 177
    return v1

    .line 180
    :cond_69
    if-eqz p2, :cond_6e

    iget-object v0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    goto :goto_70

    :cond_6e
    iget-object v0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 181
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    :goto_70
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_93

    .line 182
    new-instance v2, Lcom/google/gson/FieldAttributes;

    invoke-direct {v2, p1}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/reflect/Field;)V

    .line 183
    .local v2, "fieldAttributes":Lcom/google/gson/FieldAttributes;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/ExclusionStrategy;

    .line 184
    .local v4, "exclusionStrategy":Lcom/google/gson/ExclusionStrategy;
    invoke-interface {v4, v2}, Lcom/google/gson/ExclusionStrategy;->shouldSkipField(Lcom/google/gson/FieldAttributes;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 185
    return v1

    .line 187
    .end local v4    # "exclusionStrategy":Lcom/google/gson/ExclusionStrategy;
    :cond_92
    goto :goto_7f

    .line 190
    .end local v2    # "fieldAttributes":Lcom/google/gson/FieldAttributes;
    :cond_93
    const/4 v1, 0x0

    return v1
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/internal/Excluder;
    .registers 3

    .line 91
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    .line 92
    .local v0, "result":Lcom/google/gson/internal/Excluder;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/gson/internal/Excluder;->requireExpose:Z

    .line 93
    return-object v0
.end method

.method public withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;
    .registers 7
    .param p1, "exclusionStrategy"    # Lcom/google/gson/ExclusionStrategy;
    .param p2, "serialization"    # Z
    .param p3, "deserialization"    # Z

    .line 98
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    .line 99
    .local v0, "result":Lcom/google/gson/internal/Excluder;
    if-eqz p2, :cond_12

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 101
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_12
    if-eqz p3, :cond_20

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 106
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_20
    return-object v0
.end method

.method public varargs withModifiers([I)Lcom/google/gson/internal/Excluder;
    .registers 7
    .param p1, "modifiers"    # [I

    .line 76
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    .line 77
    .local v0, "result":Lcom/google/gson/internal/Excluder;
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/gson/internal/Excluder;->modifiers:I

    .line 78
    array-length v2, p1

    :goto_8
    if-ge v1, v2, :cond_14

    aget v3, p1, v1

    .line 79
    .local v3, "modifier":I
    iget v4, v0, Lcom/google/gson/internal/Excluder;->modifiers:I

    or-int/2addr v4, v3

    iput v4, v0, Lcom/google/gson/internal/Excluder;->modifiers:I

    .line 78
    .end local v3    # "modifier":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 81
    :cond_14
    return-object v0
.end method

.method public withVersion(D)Lcom/google/gson/internal/Excluder;
    .registers 4
    .param p1, "ignoreVersionsAfter"    # D

    .line 70
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    .line 71
    .local v0, "result":Lcom/google/gson/internal/Excluder;
    iput-wide p1, v0, Lcom/google/gson/internal/Excluder;->version:D

    .line 72
    return-object v0
.end method
