.class public Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLEditableShortcutMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;
    }
.end annotation


# static fields
.field private static final HELPTEXT_HEIGHT:I

.field private static final HELPTEXT_SIZE:I

.field private static final ITEM_HEIGHT:I

.field private static final ITEM_H_PADDING:I

.field private static final ITEM_WIDTH:I

.field private static final LAYOUT_BUTTON_WIDTH:I

.field private static final LIST_HEIGHT:I

.field private static final LIST_LANDSCAPE_POS_X:I

.field private static final LIST_LANDSCAPE_POS_Y:I

.field private static final LIST_WIDTH:I

.field private static final MENU_HEIGHT:I

.field private static final MENU_HORIZONTAL_LINE_OFFSET:I

.field private static final MENU_HORIZONTAL_LINE_POS_X:I

.field private static final MENU_HORIZONTAL_LINE_POS_Y:I

.field private static final MENU_NUM_OF_HORIZONTAL_LINE:I

.field private static final MENU_NUM_OF_VERTICAL_LINE:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field private static final MENU_VERTICAL_LINE_OFFSET:I

.field private static final MENU_VERTICAL_LINE_POS_X:I

.field private static final MENU_VERTICAL_LINE_POS_Y:I

.field private static final MENU_WIDTH:I

.field private static final RESET_BUTTON_MARGIN_LEFT:I

.field private static final RESET_BUTTON_MARGIN_TOP:I

.field private static final TEXT_X_MARGIN:I


# instance fields
.field private drawLines:Z

.field private mBackground:Lcom/sec/android/glview/TwGLViewGroup;

.field private mBackgroundHorizontalLines:Lcom/sec/android/glview/TwGLViewGroup;

.field private mBackgroundVerticalLines:Lcom/sec/android/glview/TwGLViewGroup;

.field private mCameraMode:Z

.field private mCols:I

.field private mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mLandscapeList:Lcom/sec/android/glview/TwGLList;

.field private mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

.field private mLayoutButton:Lcom/sec/android/glview/TwGLButton;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

.field private mTextBackground:Lcom/sec/android/glview/TwGLViewGroup;

.field private mViewList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f07014b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_POS_X:I

    .line 59
    const v0, 0x7f07014c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_POS_Y:I

    .line 60
    const v0, 0x7f07014d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_WIDTH:I

    .line 61
    const v0, 0x7f07014e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_HEIGHT:I

    .line 62
    const v0, 0x7f07014f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_HORIZONTAL_LINE_POS_X:I

    .line 63
    const v0, 0x7f070150

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_HORIZONTAL_LINE_POS_Y:I

    .line 64
    const v0, 0x7f070151

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_HORIZONTAL_LINE_OFFSET:I

    .line 65
    const v0, 0x7f080001

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_NUM_OF_HORIZONTAL_LINE:I

    .line 66
    const v0, 0x7f070152

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_VERTICAL_LINE_POS_X:I

    .line 67
    const v0, 0x7f070153

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_VERTICAL_LINE_POS_Y:I

    .line 68
    const v0, 0x7f070154

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_VERTICAL_LINE_OFFSET:I

    .line 69
    const/high16 v0, 0x7f08

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_NUM_OF_VERTICAL_LINE:I

    .line 70
    const v0, 0x7f070155

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_WIDTH:I

    .line 71
    const v0, 0x7f070156

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_HEIGHT:I

    .line 73
    const v0, 0x7f070157

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_LANDSCAPE_POS_Y:I

    .line 74
    const v0, 0x7f070158

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->ITEM_WIDTH:I

    .line 75
    const v0, 0x7f070159

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->ITEM_HEIGHT:I

    .line 76
    const v0, 0x7f07015a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->ITEM_H_PADDING:I

    .line 77
    const v0, 0x7f07015b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->HELPTEXT_HEIGHT:I

    .line 78
    const v0, 0x7f07015c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->HELPTEXT_SIZE:I

    .line 79
    const v0, 0x7f07006d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->TEXT_X_MARGIN:I

    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LAYOUT_BUTTON_WIDTH:I

    .line 82
    const v0, 0x7f07015d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->RESET_BUTTON_MARGIN_LEFT:I

    .line 83
    const v0, 0x7f07015e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->RESET_BUTTON_MARGIN_TOP:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;IIIIZ)V
    .locals 8
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"
    .parameter "rows"
    .parameter "cols"
    .parameter "cameraMode"

    .prologue
    .line 106
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->drawLines:Z

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mCameraMode:Z

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mViewList:Ljava/util/HashMap;

    .line 108
    check-cast p4, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    .end local p4
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    .line 110
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mCols:I

    .line 111
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mCameraMode:Z

    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->initBackground()V

    .line 114
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->initViewList()V

    .line 115
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->initLandscapeList()V

    .line 118
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;)Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->drawLines:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;)Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_HORIZONTAL_LINE_POS_X:I

    return v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mCols:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->ITEM_H_PADDING:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mViewList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method private initBackground()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 123
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_POS_Y:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    .line 124
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_HEIGHT:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mTextBackground:Lcom/sec/android/glview/TwGLViewGroup;

    .line 125
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->TEXT_X_MARGIN:I

    int-to-float v2, v2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->TEXT_X_MARGIN:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LAYOUT_BUTTON_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->HELPTEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v7, 0x7f090136

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->HELPTEXT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v10, v12}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_WIDTH:I

    int-to-float v5, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_HEIGHT:I

    int-to-float v6, v4

    const v8, 0x7f0201b2

    move v4, v3

    move v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mTextBackground:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_WIDTH:I

    int-to-float v5, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->HELPTEXT_HEIGHT:I

    int-to-float v6, v4

    const v8, 0x7f0201b6

    move v4, v3

    move v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mTextBackground:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mTextBackground:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mTextBackground:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->HELPTEXT_HEIGHT:I

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    invoke-virtual {v0, v10, v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mTextBackground:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_WIDTH:I

    add-int/lit8 v2, v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->HELPTEXT_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mTextBackground:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_WIDTH:I

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->HELPTEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v12, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 153
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->drawLines:Z

    if-eqz v0, :cond_2

    .line 154
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundHorizontalLines:Lcom/sec/android/glview/TwGLViewGroup;

    .line 155
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_NUM_OF_HORIZONTAL_LINE:I

    if-ge v9, v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundHorizontalLines:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_HORIZONTAL_LINE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_HORIZONTAL_LINE_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_HORIZONTAL_LINE_OFFSET:I

    mul-int/2addr v5, v9

    add-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x7f0201b4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 155
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundVerticalLines:Lcom/sec/android/glview/TwGLViewGroup;

    .line 160
    const/4 v9, 0x0

    :goto_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_NUM_OF_VERTICAL_LINE:I

    if-ge v9, v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundVerticalLines:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_VERTICAL_LINE_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_VERTICAL_LINE_OFFSET:I

    mul-int/2addr v4, v9

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->MENU_VERTICAL_LINE_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0201b5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 160
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundHorizontalLines:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundVerticalLines:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 167
    .end local v9           #i:I
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mTextBackground:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 169
    return-void
.end method

.method private initLandscapeList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 214
    new-instance v0, Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_LANDSCAPE_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    const v1, 0x7f020191

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$TwGLMenuEditableShortcutLandscapeAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLList;->setRotatable(Z)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 221
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->drawLines:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLList;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_WIDTH:I

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLList;->setLeftTop(IFF)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLList;->setLeftTop(IFF)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_WIDTH:I

    add-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLList;->setLeftTop(IFF)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 228
    return-void
.end method

.method private initViewList()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    .line 174
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mCameraMode:Z

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v9

    .line 176
    .local v9, sidemenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v7

    .line 182
    .local v7, editableShortcutResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :goto_0
    if-nez v9, :cond_1

    .line 184
    const-string v1, "MenuBase"

    const-string v2, "initViewList: sidemenuResource is null. So return here."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_1
    return-void

    .line 178
    .end local v7           #editableShortcutResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .end local v9           #sidemenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    const/16 v2, 0xbd2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v9

    .line 179
    .restart local v9       #sidemenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    const/16 v2, 0xbd1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v7

    .restart local v7       #editableShortcutResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_0

    .line 188
    :cond_1
    if-nez v7, :cond_2

    .line 190
    const-string v1, "MenuBase"

    const-string v2, "initViewList: editableShortcutResource is null. So return here."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 194
    :cond_2
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 195
    invoke-virtual {v9, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    .line 196
    .local v4, itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->getZorder()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v1, v2, v3, v10, v11}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    .line 198
    .local v5, command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->ITEM_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->ITEM_HEIGHT:I

    int-to-float v3, v3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 199
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mViewList:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 202
    .end local v0           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v4           #itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v5           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 203
    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    .line 204
    .restart local v4       #itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->getZorder()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v1, v2, v3, v10, v11}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    .line 206
    .restart local v5       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->ITEM_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->ITEM_HEIGHT:I

    int-to-float v3, v3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 207
    .restart local v0       #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mViewList:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 210
    .end local v0           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v4           #itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v5           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    goto/16 :goto_1
.end method

.method private isScreenReaderActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 372
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 377
    :cond_1
    :goto_0
    return v0

    .line 374
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    .line 377
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 400
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 401
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    .line 402
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mViewList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 403
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    goto :goto_0

    .line 405
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :cond_0
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mViewList:Ljava/util/HashMap;

    .line 406
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 407
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 273
    :cond_0
    return v1
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->resetOrder(Z)V

    .line 346
    :cond_0
    return-void
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 350
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->resetOrder(Z)V

    .line 351
    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 339
    return-void
.end method

.method public onDrop(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 354
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->resetOrder(Z)V

    .line 355
    return-void
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showEditBackground(Z)V

    .line 369
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 415
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->drawLines:Z

    if-eqz v0, :cond_0

    .line 416
    packed-switch p1, :pswitch_data_0

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 418
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundVerticalLines:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundHorizontalLines:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundVerticalLines:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 423
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundVerticalLines:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->HELPTEXT_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundHorizontalLines:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundVerticalLines:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 428
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundHorizontalLines:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->HELPTEXT_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundHorizontalLines:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundVerticalLines:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 433
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundHorizontalLines:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundHorizontalLines:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mBackgroundVerticalLines:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 412
    return-void
.end method

.method public onShow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showEditBackground(Z)V

    .line 360
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f090136

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->requestFocus()Z

    .line 364
    return-void
.end method

.method public refreshEditableMenu()V
    .locals 11

    .prologue
    .line 232
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mCameraMode:Z

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEditableShortcutOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v7

    .line 240
    .local v7, editableShortcutResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :goto_0
    if-nez v7, :cond_1

    .line 242
    const-string v1, "MenuBase"

    const-string v2, "refreshEditableMenu: editableShortcutResource is null. So return here."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_1
    return-void

    .line 236
    .end local v7           #editableShortcutResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEditableShortcutOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    const/16 v2, 0xbd1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v7

    .restart local v7       #editableShortcutResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_0

    .line 246
    :cond_1
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v8, v1, :cond_3

    .line 247
    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    .line 248
    .local v4, itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->getZorder()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v1, v2, v3, v6, v10}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    .line 250
    .local v5, command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->ITEM_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->ITEM_HEIGHT:I

    int-to-float v3, v3

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 252
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mViewList:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 253
    .local v9, tempItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    if-eqz v9, :cond_2

    .line 254
    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mViewList:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 259
    .end local v0           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v4           #itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v5           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v9           #tempItem:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mLandscapeList:Lcom/sec/android/glview/TwGLList;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->LIST_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    goto/16 :goto_1
.end method

.method public resetOrder(Z)V
    .locals 5
    .parameter "isSave"

    .prologue
    .line 381
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    if-eqz v3, :cond_1

    .line 382
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->moveEmptyToLast()V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    .line 386
    .local v0, b:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v1, builder:Ljava/lang/StringBuilder;
    :goto_0
    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 389
    .local v2, view:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    move-result-object v0

    .line 392
    goto :goto_0

    .line 393
    .end local v2           #view:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_0
    if-eqz p1, :cond_1

    .line 394
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    .line 396
    .end local v0           #b:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;
    .end local v1           #builder:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public restoreMenu()V
    .locals 0

    .prologue
    .line 265
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 266
    return-void
.end method
